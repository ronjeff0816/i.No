# README

# i.No(アイテンノ) 〜営業中を検索〜

i.Noは飲食店の営業状況を検索できるアプリです。
<br>
A real-time open restaurant finder App
<br>
<br>

## 機能 (Functions)

- 機能１
- ( )
<p align="center">
  <img src="" width=70%> 
</p> 
<br>

- 機能２
- ( )
<p align="center">
  <img src="" width=70%> 
</p> 
<br>

- 機能３
- ( )
<p align="center">
  <img src="" width=70%> 
</p> 
<br>

- 機能４
- ( )
<p align="center">
  <img src="" width=70%> 
</p> 
<br>

## URL

https://i-no.herokuapp.com/ 
<br>
<br>

## 💬 Usage

`$ git clone https://github.com/ronjeff0816/i.No`  
<br>
<br>

## DB Design

### ER図
<p align="center">
  <img src="" width=80%>  
</p>

### Users Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|owner_password|string|------|
#### Association
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
- has_many :shop_images, dependent: :destroy
- accepts_nested_attributes_for :shop_images, allow_destroy: true


### Shop_images Table
|Column|Type|Options|
|------|----|-------|
|image|string|null: false, foreign_key: true|
|shop|references|null: false, foreign_key: true|
#### Association
- belongs_to :shop


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
- 課題
- ()

### 追加実装 (Adding features)
- 追加機能
- ()

## 開発環境 (Made with)
- Mac OS X 10.13.6(High Sierra)
- Visual Studio Code ver. Version 1.43.2
- Terminal Version 2.8.3 (404.1)
- HTML
- CSS
- Haml
- Sass
- Ruby
- Ruby on Rails
- JavaScript
- jQuery

## 筆者 (Author)
- [Twitter](https://twitter.com/ronjeff7)
- [Qitta](https://twitter.com/ronjeff7)

