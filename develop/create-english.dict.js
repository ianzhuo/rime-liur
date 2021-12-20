const https = require("https");
const fs = require("fs");
new Promise((rs, rj) =>
{

  https.get(
    "https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt",
    (res) =>
    {
      const content = [];
      res.on("data", (chunk) => content.push(chunk));
      res.on("end", () =>
      {
        rs(Buffer.concat(content).toString());
      })
    })
})
  .then((words) =>
  {
    const filepath = "Rime/liur_English.dict.yaml";

    const stream = fs.createWriteStream(filepath, { flags: 'w' });

    stream.write(`#
# Rime schema liu 英文擴充字碼檔
# encoding: utf-8
#
# 最簡單的(無蝦米)輸入方案
---
name: liur_english
version: "1"
sort: original	#按 字詞  排序 輸入 original,以 字詞頻  排序 輸入 by_weight
#字碼格式: 字 + Tab + 字碼
#人工編碼詞，適合超長句子，或包含數字的詞
...
`
    )

    let count = 0;
    words
      .split("\r\n")
      .filter(it => it)
      .map(it =>
      {
        const word = it;

        const suffixCode = word.length <= 4 ? ";" : "";

        const def = `${word}\t${word}${suffixCode}`;
        stream.write(def);
        stream.write("\r\n");

        count++;

      })

    stream.close();


    console.info(`Total write ${words.length} words`);

  })


