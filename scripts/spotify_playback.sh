#!/bin/bash

playback_info=$(spotify_player get key playback)

if [ -n "$playback_info" ]; then
  artist_name=$(echo "$playback_info" | jq -r '.item.artists[0].name')
  song_name=$(echo "$playback_info" | jq -r '.item.name')
  is_playing=$(echo "$playback_info" | jq -r '.is_playing')

  if [ "$is_playing" = "true" ]; then
    echo " | ▶ $artist_name - $song_name"
  else
    echo " | ⏸ $artist_name - $song_name"
  fi
fi
