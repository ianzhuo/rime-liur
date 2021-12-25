#!/usr/bin/env bash
# created by Ryan Chou
# more info: https://blog.typeart.cc/rime-liur/guide/
echo "     +---------------------------+"
echo "     | RIME 嘸蝦米一鍵安裝小工具 |"
echo "     +---------------------------+"
echo "請注意！若曾經安裝過，此工具會直接覆蓋掉設定檔"
read -p "請輸入Y/y以繼續安裝。或其他任意文字，Enter後取消：" YN
case $YN in
    [Yy]* ) curl -fsSL https://raw.githubusercontent.com/hsuanyi-chou/rime-liur/master/do_install_rime_liur.sh | bash;;
    * ) exit;;
esac
echo