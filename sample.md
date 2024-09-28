---
title: |
  Pandocから文書の生成サンプル
author: [作者がここ]
date: "2024-09-24"
subtitle: サブタイトルがここ
keywords: [pandoc,markdown]
---

# はじまり

[@fig:a_image]に示す画像はpngを外部からリンクしている。
ローカルのファイルもリンク可能。

![これはイメージです](https://www.apache.org/logos/res/httpd/httpd.png{#fig:a_image}

引用元: https://www.apache.org/logos/res/httpd/httpd.png

# 数式

[@eq:b_equation]は数式。

$$ a^2 + b^2 = c^2 $$ {#eq:b_equation}

# 表

[@tbl:c_table]はただの表である。

| 左寄せ | 中央寄せ | 右寄せ|
|:--|:--:|--:|
| lefthand | center |sightseeing|
| 左 | 中央 |右|

: 例 {#tbl:c_table}

# コード

## 行番号なしの出力

デフォルトでは、コードブロックに番号はつかないようにしてある。これはテキストの引用が多いケースを想定したためである。
[@lst:d_code_no_number]a

```{#lst:d_code .text caption="単なるテキスト"}
こんにちは、世界
２行目がここ
3rd line
```

単にテキスト

```text
これはただのテキストです
このように見えます

\`\`\`text
これはただのテキストです
このように見えます
\`\`\`

となる
```

リンクできるかのテスト

```{#lst:just_text_block .text .numberLines caption="ただのテキスト、リンクできるかテスト"}
これはただのテキストです。
リンクできるかのテスト用です
```

ただpythonとだけ書くとこのようになる

```python
import sys
print("これはただpythonとだけ書いたものになります。")
```

## 行番号ありの出力

以下はは行番号ありの出力。
行番号がまずるので現状はコピーしにくい。

[@lst:d_code]は

```{#lst:d_code .python .numberLines caption="Pythonのコード"}
import sys
print("Hello, Pandoc")
sys.exit()
```

# 改ページ

改ページはこんなかんじ

↓

`\newpage`

\newpage

# 改ページ後の新しいページ

別のページにある[@lst:just_text_block]へ飛ぶことができる。

以上
