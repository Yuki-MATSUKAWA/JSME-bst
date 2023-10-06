# JSME-bst
【非公式】日本機械学会BibTeXスタイルファイルテンプレート

未完成なのでまだ使わないでください．

# 修正が必要な箇所（自分用）
## 全体
* 日本機械学会の文献一覧ではイタリック体は使用しない．
* 論文webページからBibTeXファイルをダウンロードした際に`pages`にページ番号ではなく論文番号？が入っていることがある．この場合は`note`にした方がよいかと．

## 英語文献
* `author`が3人以上の場合の最後の区切りを`, and`にするか`and`にするか悩み中．

### article
* `journal`がイタリック体になっている．
* `year`の位置が違う．

### book
* `title`がイタリック体になっている．
* `pages`の前にコロンがついている．

### booklet

### conference

### inbook
* `pages`が複数ページでもppにならない．
* `pages`の位置が違う．前にコロンがついている．

### incollection

### inproceedings
* `booktitle`がイタリック体になっている．

### manual

### masterthesis
* `title`に"がついている．
* `school`を表示したい．

### misc

### phdthesis

### proceedings
* `year`しか表示されない．

### techreport

### unpublished


## 日本語文献
* 区切りを全角カンマにするか半角カンマにするか悩み中．
* 文献末尾を全角ピリオドにするか半角ピリオドにするか悩み中．
* `year`の囲みは半角括弧にしようかな．

### article
* `title`に「」がついている．
* `author`の区切りが・になっている．
* `journal`に『』がついている．
* `year`の位置が違う．
* `volume`が第n巻になっている．
* `number`が第n号になっている．
* `pages`が頁になっている．

### book

### booklet

### conference

### inbook
* `title`に『』がついている．
* `pages`が複数ページでもppにならない．
* `pages`の位置が違う．

### incollection

### inproceedings
* `title`に『』がついている．

### manual

### masterthesis
* `school`を表示したい．

### misc

### phdthesis
* 理想形：`author`，`title`，`school`博士論文 (`year`)．

### proceedings
* `year`しか表示されない．

### techreport

### unpublished


# 参考資料
jsme.bstは武田史郎氏作のjecon-bst（経済学用スタイルファイル）を基に作成しています．
感謝申し上げます．

1. [jecon-bst](https://github.com/ShiroTakeda/jecon-bst)
1. [日本機械学会 原稿テンプレート](https://www.jsme.or.jp/publish/transact/for-authors.html)
