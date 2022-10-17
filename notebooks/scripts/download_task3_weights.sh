echo "Downloading pretrained weights for" $1 "encoder"
if [ "$1" == "ssl" ]; then
    wget https://www.dropbox.com/s/htjw410bk0grhj4/ckpt-800.pt -q --show-progress -O $2
elif [ "$1" == "supervised" ]; then
    wget https://www.dropbox.com/s/bzvx9m6w48vguia/resnet18-xray2D-128-myow-transforms-random_crop-sup0.1-seed-100.pt -q --show-progress -O $2
else
    echo $1 "does not have any pretrained weights to download."
fi
