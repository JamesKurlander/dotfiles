#!/bin/bash

session=$(tmux display-message -p '#S')

index=0
for window_id in $(tmux list-windows -t "$session" -F "#{window_id}"); do
  tmux move-window -s "$session:$window_id" -t "$session:$index"
  index=$((index + 1))
done
