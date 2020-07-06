# README

# i.No(アイテンノ) 〜営業中を検索〜
--上尾市限定版--

i.Noは飲食店の営業状況を検索できるアプリです。（A real-time open restaurant finder App）
<br><br>
お店までへ行ったけど、時短営業でもう閉まっていた...なんてことここ最近ありませんか？
「アプリで調べたのに、表示されていた営業時間と合っていない」など無駄な外出は体験したかと思います。
コロナウィルス感染拡大でこのような事態になったのは仕方がないことではありますが、
そんなコロナの影響で飲食店の営業状況が日々変化する時期だからこそ、i.Noは需要があるアプリになります！
リアルタイムに営業状況を確認できることに加え、各飲食店のコロナ感染防止対策を一目で確認できるアプリです！
<br>
<br>

## 機能一覧 (Functions)
- ユーザー登録機能
- ユーザー情報変数機能
- ログイン・ログアウト機能
- ピックアップ店舗表示一覧
- エリア別検索機能 
- 店舗詳細表示機能
- ブックマーク・アンブックマーク機能
- ブックマーク一覧検索機能
#### 店舗経営者向け機能
- +店舗登録機能
- +店舗情報編集機能
- +店舗削除機能
<br>
<br>

## URL

https://i-no.herokuapp.com/ 
<br>
<br>

## Githubリポジトリ

https://github.com/ronjeff0816/i.No  
<br>
<br>


## 💬 Usage

`$ git clone https://github.com/ronjeff0816/i.No`  
<br>
<br>

## DB Design

### ER図
<p align="center">
  <img src="https://i.gyazo.com/4ed2337f0c29457a507ca04195701625.png" width=80%>  
</p>

### Users Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default: ""|
|owner_password|string|------|
#### Association
- has_many :shops, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :favorite_shops, through: :favorites, source: :shop


### Favorites Table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|shop|references|null: false, foreign_key: true|
|user_id, shop_id|index|unique: true|
#### Association
- belongs_to :user
- belongs_to :shop


### Shops Table 
|Column|Type|Options|
|------|----|-------|
|shop_name|string|null: false|
|condition|integer|null: false|
|introduction|text|------|
|shop_tel|string|------|
|shop_add|string|null: false|
|weekday_open|time|------|
|weekday_close|time|------|
|weekend_open|time|------|
|weekend_close|time|------|
|dayoff|string|------|
|owner_id|integer|------|
|town_id|integer|null: false|
|corona_twoWays|boolean|------|
|corona_twoMeters|boolean|------|
|corona_partition|boolean|------|
|corona_disinfect|boolean|------|
|corona_mask|boolean|------|
|corona_temperature|boolean|------|
|corona_distance|boolean|------|
|corona_customerDisinfect|boolean|------|
|corona_customerDistance|boolean|------|
|corona_exit|boolean|------|
#### Association
- belongs_to :town
- has_many :favorites, dependent: :destroy
- has_many :shop_images, dependent: :destroy
- accepts_nested_attributes_for :shop_images, allow_destroy: true


### Shop_images Table
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|shop|references|null: false, foreign_key: true|
#### Association
- belongs_to :shop
- mount_uploader :image, ImageUploader


### Towns Table
|Column|Type|Options|
|------|----|-------|
|town_name|string|null: false|
#### Association
- has_many :shops

## How it looks
### トップページ（Home Page） 
<p align="center">
  <img src="https://i.gyazo.com/fbbdc2a4b2f093ae5c23895c4dd95945.jpg" width=48%>  
  <img src="https://i.gyazo.com/e8219d57d817d59b1f27e4c7868cf46a.jpg" width=48%>  
</p>


### 店舗情報編集ページ（Edit Page）
<p align="center">
  <img src="https://i.gyazo.com/2465c1d0b71036bdb9e66f133147fa2e.png" width=48%>  
  <img src="https://i.gyazo.com/36dc9b12e71a7b8b70047f3615bbe272.png" width=48%>  
</p>


### 店舗詳細ページ（Shop Details Page）
<p align="center">
  <img src="https://i.gyazo.com/88e7221480a0d0de7b31dc65076dc708.png" width=48%>  
  <img src="https://i.gyazo.com/59bbe88431b5fa25dfb3713a33ec34fa.png" width=48%> 
</p> 
<br>
<br>
<br>

## 課題や今後実装したい機能

### 課題 (Problems)
- 店主の観点から考え、やはりすぐ営業状況を更新できるように、スマートフォンアプリケーションにしたいと思います
- 店舗側が営業状況を更新し忘れが生じる可能性が高いです

### 追加したい機能 (Adding features)
- 店名での検索機能(実装中)
- お店の登録住所を元に、そのままマップアプリケーションを開けるような機能
- １時間ごとにポップアップ通信で営業状況をすぐ選択し、編集できる機能

## 開発環境 (Made with)
- Mac OS X 10.13.6(High Sierra)
- Visual Studio Code ver. Version 1.43.2
- Terminal Version 2.8.3 (404.1)
- MySQL
- Github
- Heroku
- HTML
- CSS
- Haml
- Sass
- Ruby
- Ruby on Rails
- JavaScript
- jQuery

## 開発期間と平均作業時間

- 開発期間：6/16~7/5 (20日間) 
- 1日あたりの平均作業時間：6時間


## 筆者 (Author)
- [Twitter](https://twitter.com/ronjeff7)


