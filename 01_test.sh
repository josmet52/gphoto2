# sudo gphoto2 --capture-image-and-download --frames 2000 --interval 15 --filename photos/01_test_%Y%m%d%H%M%S.jpg
sudo gphoto2 --capture-image-and-download --frames 100 --interval 15 --filename photos/01_test_%06n.jpg
# avconv -r 24 -i photos/01_test_%06d.jpg video.mp4
