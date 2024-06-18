sudo modprobe -r rtw_8723de # This unloads the module
sudo modprobe -r rtw_core

# Due to some pecularities in the modprobe utility, two steps are required.

sudo modprobe rtw_8723de    # This loads the module

# Only a single modprobe call is required to load.
