echo "Configuring OS..."

# To turn the firewall on for specific applications/services
defaults write /Library/Preferences/com.apple.alf globalstate -int 1

# Check for software update
softwareupdate -l

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# To enable FileVault (enter admin username and password) take note of the recovery key presented
fdesetup enable

echo "Macbook setup completed!"
