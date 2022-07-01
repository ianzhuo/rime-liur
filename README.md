# 鼠鬚管(RIME) + 嘸蝦米 with 注音模式 + 拼音模式 + 讀音反查 + 簡繁轉換 + 中英混輸
[blog好讀版](https://blog.typeart.cc/rime-liur/guide/)

[我的修正方法](https://blog.typeart.cc/rime-liur/fix/)

## 功能
基於[PTT/afrink大大的RIME-蝦米方案(iOS、中英混輸、動態造詞)](https://www.ptt.cc/bbs/Liu/M.1546884178.A.B99.html)

### 基於afrink大大的功能
此段取自[PTT/afrink大大的RIME-蝦米方案(iOS、中英混輸、動態造詞)](https://www.ptt.cc/bbs/Liu/M.1546884178.A.B99.html)

1. **注音模式：** 以「`';`」鍵引導可進行注音輸入(但無法透過數字鍵選字)
2. **拼音模式：** 以「\`」鍵(上排數字鍵1左邊)引導可進行拼音輸入
3. **讀音反查：** 以「`;;`」鍵引導並輸入無蝦米碼，可反查該字讀音，如「龘」=`ㄉㄚˊ`
4. **日文漢字/罕用字輸入功能**
    1. 字典檔包含日文漢字如「辻」「雫」「渋」等…。不需要的人，可至`liur.extended`中，把`- liur_Japan`這行註解掉
    2. 可透過`ctrl + /`切換至擴充字集，輸入罕用字，如四個金(AAAA)等字
5. **複合型查碼：**
    1. 於造詞、拼音、注音模式下鍵入`ctrl + '`(Enter鍵左邊)，可直接查詢蝦米編碼，
    2. 於注音或拼音模式下，可以進行以詞查碼
        (例：於注音模式下輸入ㄍㄢㄍㄚ或拼音模式下輸入ganga，再切換查碼就可以
        找出「尷尬」這個詞的所有蝦米編碼，減少選字)
        於造詞模式下，則可以反查出該字及其候選字的所有編碼(例：輸miep，可以查
        出微、徵、徽、徾、鰴、徴)等字的蝦米編碼
6. **簡繁轉換：** 於任何模式下透過`ctrl + .`，可進行即時簡繁轉換，無須切換模式
7. **中英混輸：** 在不切換輸入法的情形下，可以空白鍵上中文字或中文符號；Enter鍵上英文字或英文符號
8. **shift切換中英輸入：** afrink大大在ptt沒寫到，但是目前版本可用shift切換中英輸入，caps lock變為大寫，如同Windows習慣
    1. 我跳MacOS也3年多了，目前工作會雙平台交互使用，實在是不喜歡MacOS下用caps lock來切換中英輸入，每次大小寫都搞得我很混亂
    2. 在長段落用全英文輸入時，亦可shift切換，不必enter上詞！
    3. 甚至是含大寫的英文句子，可直接shift + 英文，再放開shift繼續輸入小寫，最後enter上詞！
---
### 我修正、新增的功能
1. **修正MAC下無法使用注音模式、讀音反查**
    - 因鼠鬚管預設只有拼音，無注音輸入，導致MAC下直接安裝會無法使用這2個功能
2. **修正自動造詞失效**
    - 現在照著PTT文章說明的方式造詞也可以順利造詞了！
    - EX:輸入
      ```
        ;ci`aj`oxx`ohe`
        註：最後一碼的`，可以不輸入
        邊造詞的同時，編碼打出來的字也會同時出現在下方
      ```
      即可自動將`中華民國`加入自定義詞彙，以後輸入`caoo`就可以得到中華民國
    - 因mac的鍵盤只有backspace(往前刪除)，無del，測試發現若要刪除自動造詞，按`Control+k`就行
    - 如要刪除前例造的`caoo`→`中華民國`，先打出`caoo`，接著按`Control+k`或`backspace`即可清除
3. **修正自定義詞彙順序** 
    - 預設會排在第一碼，影響原本字碼使用。現在會乖乖的排在原本字碼後面了
    - 已回報原作者afrink，原作者反饋之後更新會修正
4. **增加`squirrel.custom.yaml`：** 用以開啟被RIME預設關閉中文輸入的程式(如VS、VSCode、iTerms...)
    1. 因RIME預設有關閉特定程式的中文輸入，只能輸入英文，如VSCode、iTerms等。詳見[官方文件/在特定程序裏關閉中文輸入](https://github.com/rime/home/wiki/CustomizationGuide#%E5%9C%A8%E7%89%B9%E5%AE%9A%E7%A8%8B%E5%BA%8F%E8%A3%8F%E9%97%9C%E9%96%89%E4%B8%AD%E6%96%87%E8%BC%B8%E5%85%A5)
    2. 若常用的工具被RIME關閉，可在此文件自行加入開啟
    3. 預設先加入VSCode，其餘程式可照抄改成自己的程式就可以了
5. **增加六大主題：** 整合[RIME『洋蔥 純注音 版』注音設定檔](http://deltazone.pixnet.net/blog/post/264319309-%E9%BC%A0%E9%AC%9A%E7%AE%A1%E6%B3%A8%E9%9F%B3%E6%96%B9%E6%A1%88---%E7%AC%A6%E5%90%88%E4%B8%80%E8%88%AC%E6%B3%A8%E9%9F%B3%E4%BD%BF%E7%94%A8%E8%80%85%E7%BF%92%E6%85%A3%E8%A8%AD)之主題樣式
    1. 特別感謝L’Étranger 大大提供主題
    2. 於`squirrel.custom.yaml`選擇喜歡的主題
6. **調整選字順序與官蝦一致：** 鼠鬚管選字順序由1開始排起，導致所有字碼順序會比官蝦往後多一位。調整由0開始，讓字碼順序如同官方嘸蝦米。
7. (2022/07/02)**修正注音模式，無法輸入ㄦ的bug：**有人反應注音模式下輸入ㄦ，無法順利讀取ㄦ。修正此 bug

## MAC下安裝【鼠鬚管 + 嘸蝦米】完整流程
### 自動安裝
(2021/12/26新增)
增加批次指令，一鍵安裝嘸蝦米
若曾經安裝過或有自己的客制化，請記得**備份自己的設定檔再執行指令**
或經由手動安裝步驟自行操作

1. 到[rime官方](https://rime.im/download/)下載鼠鬚管並安裝
    - 若安裝完後沒有自動帶出輸入法，先照安裝步驟登出 -> 登入後，打開鍵盤，選到【簡體中文】，就會看到【鼠鬚管】了！
2. 打開終端機(terminal)，輸入`curl -fsSL https://git.io/rime_liur_installer | bash`
3. 開始使用嘸蝦米！

### 手動安裝

1. 到[rime官方](https://rime.im/download/)下載鼠鬚管並安裝
2. 使用[plum](https://github.com/rime/plum)安裝注音輸入法包
    - **安裝方法：** 打開終端機，執行`curl -fsSL https://git.io/rime-install | bash`就會自動將注音輸入的yaml檔放進rime的`用戶設定`裡。此時尚未真正將注音安裝進RIME
    - 此安裝指令由[plum說明文件](https://github.com/rime/plum#usage)提供
    - 若不須嘸蝦米，直接跳最後一步，按`部署`就可以有注音輸入了
3. 打開鼠鬚管按`用戶設定`，將前面下載的嘸蝦米目錄裡所有的yaml檔放進去
4. (若不需要則跳過此步)打開`liur_customWords.dict.yaml`，將自己常用的自定義詞彙加入
    - **注意！中間須以`<tab>`隔開**。格式：`<自定義文字><tab><編碼>`
    - 如想用`tptr`打出`台北火車站`，則輸入`台北火車站<tab>tptr`
5. 鼠鬚管按`重新部署`，會開始安裝所有輸入法(約莫30秒~1分鐘)，安裝好後會出現`部署完成`，可以開始使用！

## 未來再增加自定義詞彙

1. 一樣加在`liur_customWords.dict.yaml`
2. 再按重新部署

因已安裝好注音，此時重新部署只需要3~5秒就行
除非將整個build目錄刪除使其重新產生

## 增加英文字典(預設關閉)
- 感謝 [yozian](https://github.com/yozian) 大大提供
- 英文字典來源於 [Github  dwyl/english-words](https://github.com/dwyl/english-words)
- 現行已產生出英文字典檔，預設關閉
- 若要開啟英文字典，打開`liur.extended.dict.yaml`，將`# - liur_English`改成`- liur_English`(即刪除前面的`#`)
- 或可使用 nodejs 執行以下指令後，自行手動建立或更新 `Rime/liur_English.dict.yaml` 檔案
``` bash
$ node develop/create-english.dict.js 
```

功能如下：

方便打英文時自動帶出英文單字
![rime-eng-word](https://user-images.githubusercontent.com/11897061/146645594-a41d499f-3ba6-4aab-9ab1-94074a3a7c2f.png)

英文單字， 字碼小於 3 碼者，需補上 「;」 當結束 (或可以直接按 enter )
![rime-eng-word-less-than-3](https://user-images.githubusercontent.com/11897061/146645685-66060eb2-f6d0-47c1-b5f5-abaf33217e6f.png)
## FAQ
### 更新到 Monterey 後，無法安裝鼠鬚管

若安裝完後沒有自動帶出輸入法，先照安裝步驟登出 -> 登入後，打開鍵盤，選到【簡體中文】，就會看到【鼠鬚管】了！

### 按 Caps Lock 仍會切換成英文，但想要與 Windows 習慣一致，Caps Lock 純切換大小寫、shift 切換中英打

1. 點擊右上角的輸入法
2. 打開`鍵盤偏好設定`
3. 取消勾選`使用「中/英」鍵來切換「ABC」及目前輸入方式`

### 我部署使用一段時間後，又有再增加自定義詞彙，但後面加的一直沒有出現？
請先確認是否有按重新部署。若按了仍然無效
到BUILD資料夾，將`liur`開頭的檔案刪掉，如下：
1. liur.schema.yaml
2. liur.extended.table.bin
3. liur.extended.reverse.bin
4. liur.extended.prism.bin
5. default.yaml

重按部署

懶得找也可以直接刪掉BUILD目錄，讓他全部重新產生
但也會再安裝一次注音輸入，花較多時間
