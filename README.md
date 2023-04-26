# Bogey Busters
<img width="1451" alt="スクリーンショット" src="top_page.png">

* [概要](#概要)
* [使用している言語フレームワークのバージョン](＃使用している言語フレームワークのバージョン)
* [機能](#機能)
* [インストール方法](#インストール方法)

---

### 概要
・サイトのテーマ：自分がラウンドしたコースや練習場のレビューを投稿し、それにいいねやコメントができるレビューサイト

・テーマを選んだ理由：昨今、新型コロナウイルスの影響で大学生などの若者のゴルフブームが来ています。
しかし、ゴルフ初心者にはゴルフ場の良し悪しや難易度を調べるのが少し困難いなります。なので、一目で
ゴルフ場の情報がわかるサイトがあれば便利だと考えこのテーマにしました。

・ターゲットユーザー：ゴルフ好きの老若男女

・主な利用シーン：ゴルフ場のレビューや初心者同士でラウンドをする際のゴルフ場を探す時


### 使用している言語フレームワークのバージョン
- ruby 3.1.2
- Rails 6.1.7.3
- Bootstrap v4.5.3


### 機能
- ユーザー側
- ユーザー登録、ログイン、ログアウト機能
  - ユーザ情報の編集
  - 退会機能
- 投稿機能
  - 画像投稿
  - レビュー機能
  - 投稿編集
  - 投稿削除
- いいね機能
- コメント機能
- フォロー機能
- ページネーション機能
- 検索機能

- 管理者側
  - ユーザー管理機能
  - ユーザー退会
  - 投稿削除


### インストール方法
~~~
$ cd Bogey_Busters
~~~
~~~
$ rails db:migrate
~~~
~~~
$ rails db:seed
~~~
~~~
$ yarn install
~~~
~~~
$ rails active_storage:install
~~~
~~~
$ bundle install
~~~

### 管理者ページのログインについて
初期段階での管理者ページのログインに必要なメールアドレス及びパスワードは下記です。
- メールアドレス：admin@example.com
- パスワード：adminn