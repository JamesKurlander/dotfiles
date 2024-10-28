#!/bin/bash

song=$(nc -U /tmp/ncspot-501/ncspot.sock | jq -r '.playable.title + " by " + (.playable.album_artists[0])')
if [ -n "$song" ]; then
  echo "🎧 $song"
fi
