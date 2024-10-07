defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

defaults write com.apple.Dock autohide-delay -float 5; killall Dock
