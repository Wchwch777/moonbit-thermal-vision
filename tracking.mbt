///|
pub(all) struct TrackObservation {
  frame : Int
  point : ThermalPoint
  temperature : Double
  area : Int
} derive(Debug, Eq, ToJson)

///|
pub(all) struct ThermalTrack {
  id : Int
  observations : Array[TrackObservation]
  mut active : Bool
} derive(Debug, Eq, ToJson)

///|
pub(all) struct TrackingConfig {
  maximum_distance : Int
  maximum_gap : Int
  minimum_temperature : Double
} derive(Debug, Eq, ToJson)

///|
pub fn TrackingConfig::default() -> TrackingConfig {
  { maximum_distance: 8, maximum_gap: 2, minimum_temperature: 35.0 }
}

///|
pub fn ThermalTrack::last(track : ThermalTrack) -> TrackObservation? {
  if track.observations.is_empty() {
    None
  } else {
    Some(track.observations[track.observations.length() - 1])
  }
}

///|
pub fn ThermalTrack::length(track : ThermalTrack) -> Int {
  track.observations.length()
}

///|
pub fn ThermalTrack::velocity(track : ThermalTrack) -> ThermalPoint {
  if track.observations.length() < 2 {
    ThermalPoint::new(x=0, y=0)
  } else {
    let a = track.observations[track.observations.length() - 2].point
    let b = track.observations[track.observations.length() - 1].point
    ThermalPoint::new(x=b.x - a.x, y=b.y - a.y)
  }
}

///|
pub fn ThermalTrack::peak(track : ThermalTrack) -> TrackObservation? {
  let mut result : TrackObservation? = None
  for observation in track.observations {
    match result {
      None => result = Some(observation)
      Some(current) =>
        if observation.temperature > current.temperature {
          result = Some(observation)
        }
    }
  }
  result
}

///|
fn region_observation(region : ThermalRegion, frame : Int) -> TrackObservation {
  {
    frame,
    point: region.centroid(),
    temperature: region.max_temp,
    area: region.area(),
  }
}

///|
fn nearest_track(
  region : ThermalRegion,
  tracks : Array[ThermalTrack],
  config : TrackingConfig,
  frame : Int,
) -> Int? {
  let point = region.centroid()
  let mut selected : Int? = None
  let mut best = config.maximum_distance + 1
  for index, track in tracks {
    match track.last() {
      Some(last) if last.frame + config.maximum_gap >= frame => {
        let distance = last.point.manhattan(point)
        if distance < best {
          best = distance
          selected = Some(index)
        }
      }
      _ => ()
    }
  }
  selected
}

///|
pub fn track_regions(
  frames : Array[Array[ThermalRegion]],
  config? : TrackingConfig = TrackingConfig::default(),
) -> Array[ThermalTrack] {
  let tracks : Array[ThermalTrack] = []
  let mut next_id = 1
  for frame, regions in frames {
    let used = Array::make(tracks.length(), false)
    for region in regions {
      if region.max_temp < config.minimum_temperature {
        continue
      }
      match nearest_track(region, tracks, config, frame) {
        Some(index) if !used[index] => {
          used[index] = true
          tracks[index].observations.push(region_observation(region, frame))
          tracks[index].active = true
        }
        _ => {
          tracks.push({
            id: next_id,
            observations: [region_observation(region, frame)],
            active: true,
          })
          next_id += 1
        }
      }
    }
    for track in tracks {
      match track.last() {
        Some(last) =>
          if last.frame < frame - config.maximum_gap {
            track.active = false
          }
        None => track.active = false
      }
    }
  }
  tracks
}

///|
pub fn ThermalMatrix::track_frame_sequence(
  frames : Array[ThermalMatrix],
  threshold~ : Double,
  config? : TrackingConfig = TrackingConfig::default(),
) -> Array[ThermalTrack] {
  let regions : Array[Array[ThermalRegion]] = []
  for matrix in frames {
    regions.push(matrix.threshold_regions(min_temp=threshold))
  }
  track_regions(regions, config~)
}

///|
pub(all) struct MotionSummary {
  track_count : Int
  active_count : Int
  total_observations : Int
  fastest_track : Int
  hottest_track : Int
} derive(Debug, Eq, ToJson)

///|
pub fn summarize_tracks(tracks : Array[ThermalTrack]) -> MotionSummary {
  let mut active = 0
  let mut observations = 0
  let mut fastest = 0
  let mut fastest_speed = 0
  let mut hottest = 0
  let mut hottest_value = -1.0e300
  for track in tracks {
    if track.active {
      active += 1
    }
    observations += track.length()
    let velocity = track.velocity()
    let speed = velocity.x.abs() + velocity.y.abs()
    if speed > fastest_speed {
      fastest_speed = speed
      fastest = track.id
    }
    match track.peak() {
      Some(peak) if peak.temperature > hottest_value => {
        hottest_value = peak.temperature
        hottest = track.id
      }
      _ => ()
    }
  }
  {
    track_count: tracks.length(),
    active_count: active,
    total_observations: observations,
    fastest_track: fastest,
    hottest_track: hottest,
  }
}

///|
pub fn ThermalTrack::to_markdown(track : ThermalTrack) -> String {
  let lines : Array[String] = [
    "### Track " + track.id.to_string(),
    "",
    "| Frame | X | Y | Temperature | Area |",
    "| ---: | ---: | ---: | ---: | ---: |",
  ]
  for observation in track.observations {
    lines.push(
      "| " +
      observation.frame.to_string() +
      " | " +
      observation.point.x.to_string() +
      " | " +
      observation.point.y.to_string() +
      " | " +
      observation.temperature.to_string() +
      " | " +
      observation.area.to_string() +
      " |",
    )
  }
  lines.join("\n")
}
