IFS=' ' read -r model setting mode <<< `cat config.txt`
#echo $model
#eho $setting
#echo $mode
rm -f *.json
if [ "$mode" == "2D" ]; then
  if [ "$setting" == "3class" ]; then
    if [ "$model" == "UNet" ]; then
      echo "Loading $model $mode $setting" && wget https://www.dropbox.com/s/7zwh7j43ozui7t1/UNet_2D_3class.pt -q --show-progress --progress=dot 
      wget https://www.dropbox.com/s/7edhhxr7o9iqear/UNet_2D_3class.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_UnetPlusPlus" ]; then
      echo "Loading $model $mode $setting" && wget https://www.dropbox.com/s/r0v3vvwlqelpbac/smp_UnetPlusPlus_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/aneo0ld7e13sq8p/smp_UnetPlusPlus_3class.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_PSPNet" ]; then
      echo "Loading $model $mode $setting" && wget https://www.dropbox.com/s/h4qmkbj7y878ivt/smp_PSPNet_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/7jg2tjyji2j7hlx/smp_PSPNet_3class.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_PAN" ]; then
      echo "Loading $model $mode $setting" && wget https://www.dropbox.com/s/xph537dtsq1qxja/smp_PAN_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/ztndoyzgm464exs/smp_PAN_3class.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_FPN" ]; then
      echo "Loading $model $mode $setting" && wget https://www.dropbox.com/s/iu8ute75j4tbpxf/smp_FPN_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/4d1cmksl887ltir/smp_FPN_3class.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_MAnet" ]; then
      echo "Loading $model $mode $setting" && wget https://www.dropbox.com/s/d9kll74duwo2cbr/smp_MAnet_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/yf9gf8kdk3ad4uk/smp_MAnet_3class.json -q --show-progress --progress=dot
    fi
  elif [ "$setting" == "4class" ]; then
    if [ "$model" == "UNet" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/xd0hgpq36hjjt21/UNet_2D_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/30ofn890moxxyzp/UNet_2D.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_UnetPlusPlus" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/7rbhu074454h6we/smp_UnetPlusPlus_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/8fugnn18127rvg4/smp_UnetPlusPlus.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_PSPNet" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/u043cojfd12xkoc/smp_PSPNet_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/114iwuka5gjf5fj/smp_PSPNet.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_PAN" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/w5fi601apllhzka/smp_PAN_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/8pq5epecvm0sndj/smp_PAN.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_FPN" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/k14btyrs4lif0z0/smp_FPN_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/u1ivarsp1m6h8nd/smp_FPN.json -q --show-progress --progress=dot
    elif [ "$model" == "smp_MAnet" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/3qyxozy02app7e6/smp_MAnet_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/usxyqpwho8k2tc0/smp_MAnet.json -q --show-progress --progress=dot
    fi
  fi
elif [ "$mode" == "3D" ]; then
  if [ "$setting" == "3class" ]; then
    if [ "$model" == "mzp_HighResNet" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/ffblz0irsjemvpw/mzp_HighResNet_3D_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/u13ezr19azk1a8w/mzp_HighResNet_3D_3class.json -q --show-progress --progress=dot
    elif [ "$model" == "mzp_VNetLight" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/otrga1kr9lishim/mzp_VNetLight_3D_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/71f5sae3l9hl4a0/mzp_VNetLight_3D_3class.json -q --show-progress --progress=dot
    elif [ "$model" == "UNet" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/f5db56f41pcmyxo/UNet_3D_3class.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/v7360u0g62d19h3/UNet_3D_3class.json -q --show-progress --progress=dot
    fi
  elif [ "$setting" == "4class" ]; then
    if [ "$model" == "mzp_HighResNet" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/255medlec507t33/mzp_HighResNet_3D_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/kgkw0f28eppr7j8/mzp_HighResNet_3D.json -q --show-progress --progress=dot
    elif [ "$model" == "mzp_VNetLight" ]; then
      echo "Loading $model $mode $setting"
      wget https://www.dropbox.com/s/1xbmjcvjpi5fix5/mzp_VNetLight_3D_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/tt2xocpu18gokmw/mzp_VNetLight_3D.json -q --show-progress --progress=dot
    elif [ "$model" == "UNet" ]; then
      echo "Loading $model $model $mode $setting"
      wget https://www.dropbox.com/s/grlqwue5s2sttyb/UNet_3D_noZI.pt -q --show-progress --progress=dot
      wget https://www.dropbox.com/s/0ab9t3oeo66zkz5/UNet_3D.json -q --show-progress --progress=dot
    fi
  fi
fi