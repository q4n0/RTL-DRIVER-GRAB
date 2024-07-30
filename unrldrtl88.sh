#!/bin/bash

# Function to check and report errors
check_command_success() {
    if [ $? -ne 0 ]; then
        echo "Error: $1"
        exit 1
    fi
}

# Unload the rtw_8723de module
echo "Attempting to unload the rtw_8723de module..."
sudo modprobe -r rtw_8723de
check_command_success "Failed to unload rtw_8723de."

# Unload the rtw_core module
echo "Attempting to unload the rtw_core module..."
sudo modprobe -r rtw_core
check_command_success "Failed to unload rtw_core."

# Load the rtw_8723de module
echo "Attempting to load the rtw_8723de module..."
sudo modprobe rtw_8723de
check_command_success "Failed to load rtw_8723de."

echo "Module operations completed successfully."
