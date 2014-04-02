
MP4S=DSCI0030.mp4  DSCI0031.mp4  DSCI0032.mp4  DSCI0033.mp4  DSCI0034.mp4  DSCI0035.mp4  DSCI0037.mp4  DSCI0038.mp4  DSCI0039.mp4

allmp4: $(MP4S)

.SUFFIXES: .mp4 .webm .ogg

.webm.mp4: %.webm
	ffmpeg -i $< -b 1500k -vcodec libx264 -vprofile slow -vprofile baseline -g 30 -s 640x480 $@

.webm.ogg: %.webm
	ffmpeg2theora -a 3 -v 4 -o $@ $<
