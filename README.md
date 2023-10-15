# JSME-bst
【非公式】日本機械学会BibTeXスタイルファイルテンプレート

未完成なのでまだ使わないでください．

# 修正が必要な箇所（自分用）
## 全体
* 日本機械学会の文献一覧ではイタリック体は使用しない．
* 論文webページからBibTeXファイルをダウンロードした際に`pages`にページ番号ではなく論文番号？が入っていることがある．この場合は`note`にした方がよいかと．
* ハイパーリンクをジャーナル名（に相当するもの）に埋め込みたい．
* その際，ハイパーリンクを使用しないバージョンとハイパーリンクを使用するバージョンをそれぞれ作成した方がいいと思う．
* `title`の冒頭以外は小文字に変換するか否か．
* ~~pp.の後ろにチルダを入れたい．~~
* 本来であれば「文献」の後ろに「References」を入れなければいけないが，一旦は「文献」のみにする．複数の文献リストを入れるのは割とめんどくさい．
* ~~`title`の後にすぐ`year`が来る場合，カンマを消せていない．→本当か？~~
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
* `author`が3人以上の場合の最後の区切りを`, and`にするか`and`にするか悩み中．

### article
* 雑誌に掲載された論文．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, `journal` (`year`), Vol.`volume`, No.`number`, pp.`pages`, `note`.
* ~~`journal`がイタリック体になっている．~~
* ~~`year`の位置が違う．~~

### book
* 出版社が刊行した書籍．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, `publisher` (`year`), `note`.
* ~~`title`がイタリック体になっている．~~
* ~~`pages`の前にコロンがついている．~~

### booklet
* 出版社や機関名が明示されていない印刷物や製本済の作品．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, `howpublished` (`year`), `note`.
* ~~`year`の位置が違う．~~

### conference
* `conference`は`inproceedings`と同一となるように作成．

### inbook
* 書籍中の一部．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, `publisher` (`year`), pp.`pages`, `note`.
* ~~`pages`が複数ページでもppにならない．~~
* ~~`pages`の位置が違う．前にコロンがついている．~~

### incollection
* それ自体がタイトルを持っている書籍中の一部．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, `booktitle`, `publisher` (`year`), Vol.`volume`, No.`number`, pp.`pages`, `note`.
* ~~`title`に""がついている．~~
* ~~`booktitle`がイタリック体になっている．~~
* ~~`publisher`の前にコロンがついている．~~
* ~~`pages`の場所が違う．~~

### inproceedings
* 会議論文集中の一論文．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, in Proceedings of `booktitle` (`year`), pp.`pages`, `note`.
* ~~`booktitle`がイタリック体になっている．~~

### manual
* マニュアル．技術文書．
* 理想形：`author 1`, `author 2` and `author 3`, `title` (`year`), `note`.
* ~~`title`がイタリック体になっている．~~
* `title`にハイパーリンクを埋め込もうと思ったが失敗．

### mastersthesis
* 修士学位論文．
* 理想形：`author`, `title`, Master's thesis, `school` (`year`), `note`.
* ~~`title`に"がついている．~~
* ~~`school`を表示したい．~~

### misc
* その他該当種別が無いもの．
* arXiv上の文献は`misc`に分類．arXivであることは明記したい．

### online
* Webページ等は`online`に分類．~~ただし，JSMEの書き方に注意．~~
* jecon.bst独自の仕様？
* 参照日は`access`に書く．

### phdthesis
* 博士学位論文．
* 理想形：`author`, `title`, Ph.D. dissertation, `school` (`year`), `note`.

### proceedings
* 会議論文集
* 理想形：Proceedings of `title` (`year`), `note`.
* ~~`year`しか表示されない．~~

### techreport
* 大学，研究機関などから出版された報告書．
* 理想形：`author 1`, `author 2` and `author 3`, `title`, `institution` (`year`), Vol.`volume`, No.`number`, pp.`pages`, `note`.
* ~~`pages`の位置がおかしい．~~

### unpublished
* 著者とタイトルがある文書であるが，公式に刊行されていないもの．
* 理想形：`author 1`, `author 2` and `author 3`, `title` (`year`), `note`.
* ~~`title`に""がついている．~~
* `title`にハイパーリンクを埋め込もうと思ったが失敗．


## 日本語文献
* 区切りを全角カンマにするか半角カンマにするか悩み中．
* 文献末尾を全角ピリオドにするか半角ピリオドにするか悩み中．
* `year`の囲みは半角括弧にしようかな．

### article
* 理想形：`author 1`，`author 2`，`author 3`，`title`，`journal` (`year`)，Vol.`volume`，No.`number`，pp.`pages`，`note`．
* ~~`title`に「」がついている．~~
* ~~`author`の区切りが・になっている．~~
* ~~`journal`に『』がついている．~~
* ~~`year`の位置が違う．~~
* ~~`volume`が第n巻になっている．~~
* ~~`number`が第n号になっている．~~
* ~~`pages`が頁になっている．~~

### book
* 理想形：`author 1`，`author 2`，`author 3`，`title`，`publisher` (`year`)，`note`．

### booklet
* 理想形：`author 1`，`author 2`，`author 3`，`title`，`howpublished` (`year`)，`note`．
* ~~`year`の位置が違う．~~

### conference
* `conference`は`inproceedings`と同一となるように作成．

### inbook
* 理想形：`author 1`，`author 2`， `author 3`，`title`，`publisher` (`year`)，pp.`pages`，`note`．
* ~~`title`に『』がついている．~~
* ~~`pages`が複数ページでもppにならない．~~
* ~~`pages`の位置が違う．~~

### incollection
* 理想形：`author 1`，`author 2`，`author 3`，`title`，`booktitle`，`publisher` (`year`)，Vol.`volume`，No.`number`，pp.`pages`，`note`．
* ~~`pages`の位置が違う．~~

### inproceedings
* 理想形：`author 1`，`author 2`，`author 3`，`title`，in Proceedings of `booktitle` (`year`)，pp.`pages`，`note`．
* ~~`title`に『』がついている．~~

### manual
* 理想形：`author 1`，`author 2`，`author 3`，`title` (`year`)，`note`．
* `title`にハイパーリンクを埋め込もうと思ったが失敗．

### mastersthesis
* 理想形：`author`，`title`，`school`修士論文 (`year`)，`note`．
* ~~`school`を表示したい．~~

### misc
* 学部の卒業論文は`misc`でいいと思います．その際，`school`ではなく，`howpublished`を使用．

### online
* Webページ等は`online`に分類．~~ただし，JSMEの書き方に注意．~~
* jecon.bst独自の仕様？
* 参照日は`access`に書く．

### phdthesis
* 理想形：`author`，`title`，`school`博士論文 (`year`)．
* ~~博士論文，`school`になっている．~~

### proceedings
* 理想形：`title`講演論文集 (`year`), `note`.
* ~~`year`しか表示されない．~~

### techreport
* 理想形：`author 1`，`author 2`，`author 3`，`title`，`institution` (`year`)，Vol.`volume`，No.`number`，pp.`pages`，`note`．
* ~~`pages`の位置がおかしい．~~

### unpublished
* 理想形：`author 1`，`author 2`，`author 3`，`title` (`year`)，`note`．
* `title`にハイパーリンクを埋め込もうと思ったが失敗．


# 参考資料
jsme.bstは武田史郎氏作のjecon-bst（経済学用スタイルファイル）を基に作成しています．
深く感謝申し上げます．

1. [jecon-bst](https://github.com/ShiroTakeda/jecon-bst)
1. [日本機械学会 原稿テンプレート](https://www.jsme.or.jp/publish/transact/for-authors.html)
1. [奥村晴彦，黒木裕介，［改訂第8版］LaTeX2e美文書作成入門，技術評論社 (2020)，pp.184--198．](https://gihyo.jp/book/2020/978-4-297-11712-2)
1. [吉永徹美，LaTeX2e辞典 増補改訂版，翔泳社 (2018)，pp.502--508．](https://www.shoeisha.co.jp/book/detail/9784798157078)
