# JSME-bst
【非公式】日本機械学会BibTeXスタイルファイルテンプレート

`jsme.bst`は一旦使えるようになったので文章を増やします．

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
