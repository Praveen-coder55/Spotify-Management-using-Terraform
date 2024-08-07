resource "spotify_playlist" "Sandalwood" {
  name        = "Kannada songs"
  description = "Following contains vintage kannada songs"
  tracks = ["7pLOhhbNfuFWnpBU0FzLZ4",
    "4a4av6faxCAkMPYudlRLS1"
  ]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "slimShady" {
  name = "Slim Shady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id, ]
}
