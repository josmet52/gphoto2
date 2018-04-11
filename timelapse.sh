#! bash
sudo gphoto2 --capture-image-and-download --frames 2400 --interval 15 --filename photos/%06n.jpg
cd photos
sudo mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o timelapse.mp4 -mf type=jpeg:fps=24 mf://*.jpg
# sudo rm *.jpg
sudo mv timelapse.mp4 "../videos/tl-$(date +"%Y%m%d_%H%M%S")"
cd ..

