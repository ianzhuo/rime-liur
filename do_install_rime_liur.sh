#!/usr/bin/env bash
# created by Ryan Chou
# more info: https://blog.typeart.cc/rime-liur/guide/
RIME_FOLDER="$HOME"/Library/Rime
RIME_LIUR_FOLDER=$RIME_FOLDER/rime-liur-master
echo "+------------------------------------+"
echo "| step 1: 使用 plum 初始化注音輸入法 |"
echo "+------------------------------------+"
curl -fsSL https://git.io/rime-install | bash
echo
echo "+--------------------------------+"
echo "| step 2: 下載 RIME 嘸蝦米輸入法 |"
echo "+--------------------------------+"
cd $RIME_FOLDER && curl -L https://github.com/hsuanyi-chou/rime-liur/archive/refs/heads/master.zip | tar xz
cp -R $RIME_LIUR_FOLDER/Rime/* $RIME_FOLDER
rm -rf $RIME_LIUR_FOLDER
echo
echo "     +---------------------------------+"
echo "     |嘸蝦米 與 注音輸入法 初始化完成！|"
echo "     +---------------------------------+"
echo
echo "請點擊右上角 鼠鬚管「㞢」 -> 用戶設定(會打開資料夾) -> 打開「liur_customWords.dict.yaml」設定加字加詞"
echo "或不設定，直接點擊右上角 鼠鬚管「㞢」 -> 重新部署 直接安裝嘸蝦米!"
echo "若之後再異動加字加詞，亦請按下「重新部署」以生效加字加詞"
echo
echo "更多資訊請參考 https://blog.typeart.cc/rime-liur/guide/"