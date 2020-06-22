# README

# i.No DB Design

## Users Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|owner_password|string|------|
### Association
- has_many :favorites, dependent: :destroy
- has_many :favorite_shops, through: :favorites, source: :shop


## Favorites Table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|shop|references|null: false, foreign_key: true|
|user_id, shop_id|index|unique: true|
### Association
- belongs_to :user
- belongs_to :shop


## Shops Table 
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
### Association
- belongs_to :town
- has_many :shop_images, dependent: :destroy
- accepts_nested_attributes_for :shop_images, allow_destroy: true


## Shop_images Table
|Column|Type|Options|
|------|----|-------|
|image|string|null: false, foreign_key: true|
|shop|references|null: false, foreign_key: true|
### Association
- belongs_to :shop


## Towns Table
|Column|Type|Options|
|------|----|-------|
|town_name|string|null: false|
### Association
- has_many :shops