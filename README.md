# JSME-bst（【非公式】日本機械学会BibTeXスタイルファイルテンプレート）
`jsme.bst`は[日本機械学会の原稿テンプレート](https://www.jsme.or.jp/publish/transact/for-authors.html)に基づいた参考文献の出力を実現するために作成した，非公
式BibTeXスタイルファイルテンプレートです．
必要なファイル一式はGitHubの[JSME-bst](https://github.com/Yuki-MATSUKAWA/JSME-bst)から入手可能なので，用途に応じて自由に改変してください．
参考文献のリストはこの`pdf`ファイルの末尾で，出力している文献の`bib`ファイルは英語文献`mybib_en.bib`と日本語文献`mybib_jp.bib`の二つです．
`JSME-bst`の作成者である松川が流体力学，特に乱流遷移の研究をしているため，引用している文献は乱流遷移の周辺のものが多くなっています（全てではありません）．
ただ，材料力学など他分野の方でも基本的な使い方は同じです．
また，`JSME-template1.pdf`の第3節でも述べますが，著者数が1名，2名，3名以上のそれぞれで引用時の出力結果が異なります．そのため`mybib_en.bib`，`mybib_jp.bib`では可能な限り著者数が1名，2名，3名以上の計3パターンを用意しています．
ただ，基本的に実在の文献を集めて載せているので学位論文（`@phdthesis`, `@mastersthesis`）のように原則著者が一人のものや`@manual`，`@unpublished`など一部のエントリーでは全てのパターンを網羅できていない場合もあるのでご了承ください（ただ，参考にするうえで困ることのないくらいにはパターンを網羅しているつもりです）．
この文書ではBibTeX初心者でも使いやすいよう，BibTeXそのものの使い方や`bib`ファイルの作成方法といった内容も可能な限り説明します．
それでもわからなければさまざまな書籍やwebサイトがあるので参考にしてみてください．
また，その都度説明しますが，日本機械学会の原稿テンプレートに沿ったリストを作成するために`bib`ファイルの作成方法が一部通常のBibTeXと異なる場合があるのでご了承ください．
`jsme.bst`作成にあたり可能な限り日本機械学会の原稿テンプレートを忠実に再現できるよう努力していますが，まだ十分に再現できていない箇所もあります．
もし何か問題や不明点があればGitHubにコメントしていただくかメールをいただけると幸いです．
可能な限り対応しますが，jsme.bstを使用したことにより発生した問題に対しては一切の責任を持ちませんのでご了承ください．
また，JSME-bstリポジトリ内のファイルは全て日本機械学会の書式の実現のために作成した非公式ファイルなので使用方法等を日本機械学会に問い合わせることもご遠慮ください．

# 修正が必要な箇所（自分用）
## 全体
* 論文webページからBibTeXファイルをダウンロードした際に`pages`にページ番号ではなく論文番号？が入っていることがある．この場合は`note`にした方がよいかと．
* ハイパーリンクをジャーナル名（に相当するもの）に埋め込みたい．
* その際，ハイパーリンクを使用しないバージョンとハイパーリンクを使用するバージョンをそれぞれ作成した方がいいと思う．
* 本来であれば「文献」の後ろに「References」を入れなければいけないが，一旦は「文献」のみにする．複数の文献リストを入れるのは割とめんどくさい．
* `JSME-template1.tex`はハイパーリンク入りの文献テンプレート，`JSME-template2.tex`はハイパーリンク無しの文献テンプレート，`JSME-template3.tex`はJSMEオリジナルの文献リストを表示といった感じにしたい．
* ハイパーリンク有効の場合は基本的にDOIやURLを末尾に表示したくない．
* `journal`，`booktitle`があるときはDOIやURLをハイパーリンクで埋め込み．
* これは見た目を気にしているだけだが，データ項目の順序を決めたい．
1. `author`
2. `yomi`
3. `title`
4. `journal`, `booktitle`, `publisher`, `howpublished`, `school`, `institution`
5. `volume`
6. `number`
7. `pages`
8. `year`
9. `doi`
10. `url`
11. `access`
12. `note`

## 英語文献

### manual
* マニュアル．技術文書．
* 理想形：`author 1`, `author 2` and `author 3`, `title` (`year`), `note`.
* `title`にハイパーリンクを埋め込もうと思ったが失敗．

### proceedings
* 会議論文集
* 理想形：Proceedings of `title` (`year`), `note`.
* `author`が無いので本文中での引用表示がおかしくなる．

### techreport
* 大学，研究機関などから出版された報告書．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, `institution` (`year`), Vol.`volume`, No.`number`, pp.`pages`, `note`.
* `type`フィールドの取り扱いをどうするか．

### unpublished
* 著者とタイトルがある文書であるが，公式に刊行されていないもの．
* 理想形：`author 1`, `author 2` and `author 3`, `title` (`year`), `note`.
* `title`にハイパーリンクを埋め込もうと思ったが失敗．


## 日本語文献

### manual
* 理想形：`author 1`，`author 2`，`author 3`，`title` (`year`)，`note`．
* `title`にハイパーリンクを埋め込もうと思ったが失敗．

### proceedings
* 理想形：`title`講演論文集 (`year`), `note`.
* `author`が無いので本文中での引用表示がおかしくなる．

### techreport
* 理想形：`author 1`，`author 2`，`author 3`，`title`，`institution` (`year`)，Vol.`volume`，No.`number`，pp.`pages`，`note`．
* `type`フィールドの取り扱いをどうするか．

### unpublished
* 理想形：`author 1`，`author 2`，`author 3`，`title` (`year`)，`note`．
* `title`にハイパーリンクを埋め込もうと思ったが失敗．


# 参考資料
jsme.bstは武田史郎氏作のjecon-bst（経済学用スタイルファイル）を基に作成しています．
深く感謝申し上げます．

1. [jecon-bst](https://github.com/ShiroTakeda/jecon-bst)
1. [日本機械学会 原稿テンプレート](https://www.jsme.or.jp/publish/transact/for-authors.html)
1. [奥村晴彦, 黒木裕介, ［改訂第8版］LaTeX2e美文書作成入門, 技術評論社 (2020), pp.184--198.](https://gihyo.jp/book/2020/978-4-297-11712-2)
1. [吉永徹美, LaTeX2e辞典 増補改訂版, 翔泳社 (2018), pp.502--508.](https://www.shoeisha.co.jp/book/detail/9784798157078)
