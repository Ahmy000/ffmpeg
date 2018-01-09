ffmpeg \
	-i s1.mp4 -i s2.mp4 -i s3.mp4 \
	-filter_complex " \
		nullsrc=size=640x480 [base]; \
		[0:v] setpts=PTS-STARTPTS, scale=320x240 [upperleft]; \
		[1:v] setpts=PTS-STARTPTS, scale=320x240 [upperright]; \
		[2:v] setpts=PTS-STARTPTS, scale=640x240 [down]; \
		[base][upperleft] overlay=shortest=1 [tmp1]; \
		[tmp1][upperright] overlay=shortest=1:x=320 [tmp2]; \
		[tmp2][down] overlay=shortest=1:y=240 \
	" \
	-c:v libx264 output.mp4

