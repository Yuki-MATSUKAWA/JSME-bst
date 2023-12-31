# `JSME-bst`（【非公式】日本機械学会 BibTeX スタイルファイルテンプレート）

## `JSME-bst` の概要

日本機械学会オリジナルの原稿テンプレートに合わせた内容（`JSME-original`内）に関しては現在調整中です（`cls` ファイルの書き換えを検討中）．

* `JSME-template1.tex`, `JSME-template1.pdf` -> ハイパーリンク有りの`jsme.bst`説明書
* `JSME-template2.tex`, `JSME-template2.pdf` -> ハイパーリンク無しの`jsme-nolink.bst`説明書
* `jsme.bst` -> ハイパーリンク有りの `bst` ファイル
* `jsme-nolink.bst` -> ハイパーリンク無しの `bst` ファイル
* `mybib_en.bib`, `mybib_jp.bib` -> 説明書用の文献リスト `bib` ファイル
* `JSME_original` -> 日本機械学会オリジナルのLaTeX原稿テンプレートを用いた際の処理
    * `jsmepaper1.tex`, `jsmepaper1.pdf` -> ハイパーリンク有りの日本機械学会原稿テンプレート
    * `jsmepaper2.tex`, `jsmepaper2.pdf` -> ハイパーリンク無しの日本機械学会原稿テンプレート
    * `a4jsme.sty`, `jsadd.sty`, `jsme10.sty`, `jsmefont.sty`, `jsmepaper.cls` -> `jsmepaper1.pdf`, `jsmepaper2.pdf`作成時に必要なファイル（日本機械学会オリジナル）
    * `jsmebib.bib` -> 日本機械学会原稿テンプレートの文献リスト `bib` ファイル

`jsme.bst` は[日本機械学会の原稿テンプレート](https://www.jsme.or.jp/publish/transact/for-authors.html)に基づいた参考文献の出力を実現するために作成した，非公式 BibTeX スタイルファイルテンプレートです．
必要なファイル一式は GitHub の[JSME-bst](https://github.com/Yuki-MATSUKAWA/JSME-bst)から入手可能なので，用途に応じて自由に改変してください．
参考文献のリストはこの `pdf` ファイルの末尾で，出力している文献の `bib` ファイルは英語文献 `mybib_en.bib` と日本語文献 `mybib_jp.bib` の二つです．
`JSME-bst` の作成者である松川が流体力学，特に乱流遷移の研究をしているため，引用している文献は乱流遷移の周辺のものが多くなっています（全てではありません）が，材料力学など他分野の方でも基本的な使い方は同じです．
また，`JSME-template1.pdf` の第 3 節でも述べますが，著者数が 1 名，2 名，3 名以上のそれぞれで引用時の出力結果が異なります．そのため `mybib_en.bib`，`mybib_jp.bib` では可能な限り著者数が 1 名，2 名，3 名以上の計 3 パターンを用意しています．
ただ，基本的に実在の文献を集めて載せているので学位論文（`@phdthesis`, `@mastersthesis`）のように原則著者が一人のものや `@manual`，`@unpublished` など一部のエントリーでは全てのパターンを網羅できていない場合もあるのでご了承ください（参考にするうえで困ることのないくらいにはパターンを網羅しているつもりです）．

この文書では BibTeX 初心者でも使いやすいよう，BibTeX そのものの使い方や `bib` ファイルの作成方法といった内容も可能な限り説明します．
それでもわからなければさまざまな書籍や web サイトがあるので参考にしてみてください．
また，その都度説明しますが，日本機械学会の原稿テンプレートに沿ったリストを作成するために `bib` ファイルの作成方法が一部通常の BibTeX と異なる場合があるのでご了承ください．

`JSME-bst` 作成にあたり可能な限り日本機械学会の原稿テンプレートを忠実に再現できるよう努力していますが，まだ十分に再現できていない箇所もあります．
もし何か問題や不明点があれば GitHub にコメントしていただくかメールをいただけると幸いです．
可能な限り対応しますが，`JSME-bst` を使用したことにより発生した問題に対しては一切の責任を持ちませんのでご了承ください．
また，`JSME-bst` リポジトリ内のファイルは全て日本機械学会の書式の実現のために作成した非公式ファイルなので使用方法等を日本機械学会に問い合わせることもご遠慮ください．

## 参考資料

`jsme.bst` は武田史郎氏作の `jecon-bst`（経済学用スタイルファイル）を基に作成しています．
深く感謝申し上げます．

1. [`jecon-bst`](https://github.com/ShiroTakeda/jecon-bst)
2. [日本機械学会 原稿テンプレート](https://www.jsme.or.jp/publish/transact/for-authors.html)
3. [奥村晴彦, 黒木裕介, ［改訂第8版］LaTeX2e 美文書作成入門, 技術評論社 (2020), pp.184--198.](https://gihyo.jp/book/2020/978-4-297-11712-2)
4. [吉永徹美, LaTeX2e 辞典 増補改訂版, 翔泳社 (2018), pp.502--508.](https://www.shoeisha.co.jp/book/detail/9784798157078)
