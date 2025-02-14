
invoke2 -entry caplog_init -format void
invoke2 -entry capproc_init_root -format int -int1 91135

# Add capproc pgraph dump to system dump service
sysdmp_add -source capproc_pgraph -save capproc_save_pgraph_status -fileext txt


# Init VisionManager for Integrated Vision Option.
invoke -entry VisionManager_init -noarg

# Start VisionManager for Integrated Vision Option.
# int1 = camera communication thread priority
invoke2 -entry VisionManager_start -format int -int1 108

# Start discover thread 
task -slotname CameraDiscoverts -pri 108 -vwopt 0x8 -stcks 15000 -entp CameraDiscoverts_main -nosync -noreg 

# Add show routine to system dump service
sysdmp_add -show ivshow4
