#!/usr/bin/env bash
# created by Ryan Chou
# more info: https://blog.typeart.cc/rime-liur/guide/
echo "     +---------------------------+"
echo "     | RIME 嘸蝦米自動安裝小工具 |"
echo "     +---------------------------+"
echo "請注意！本工具會直接覆蓋掉 rime 所有設定檔。包含 plum 初始化「預設所有輸入法」"
echo "若有自行客制化之部份，建議備份後再繼續作業"
echo "本工具會透過 plum 初始化「預設所有輸入法」與下載「嘸蝦米輸入法」"
read -p "請輸入Y/y以繼續安裝。或輸入其他任意文字，Enter後取消安裝：" ANS
if [[ $ANS == [Yy] ]]; then
    curl -fsSL https://raw.githubusercontent.com/hsuanyi-chou/rime-liur/master/do_install_rime_liur.sh | bash
    else
      echo "取消安裝"
      exit
fi
