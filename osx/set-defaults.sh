# Disables accents popup
defaults write -g ApplePressAndHoldEnabled -bool false

# List view in finder
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Show ~/Library
chflags nohidden ~/Library
