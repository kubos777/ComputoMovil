//: Playground - noun: a place where people can play

import Foundation

struct Track{
    var trackNumber: Int
}

let tracks = [Track(trackNumber: 3),Track(trackNumber: 2),
            Track(trackNumber: 1),Track(trackNumber: 4)]

let sortedTracks = tracks.sorted { (track1, track2) -> Bool  in
    return track1.trackNumber < track2.trackNumber
}

let sortedTracks2 = tracks.sorted { (track1, track2)  in
    return track1.trackNumber < track2.trackNumber
}

let sortedTracks3 = tracks.sorted {
    return $0.trackNumber < $1.trackNumber
}

let sortedTracks4 = tracks.sorted {$0.trackNumber < $1.trackNumber}

print(sortedTracks4)
