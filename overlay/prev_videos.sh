ffmpeg -i s.mp4 -filter:v "crop=320:240:100:100" s1.mp4
ffmpeg -i s.mp4 -filter:v "crop=320:240:200:200" s2.mp4
ffmpeg -i s.mp4 -filter:v "crop=640:240:300:400" s3.mp4
