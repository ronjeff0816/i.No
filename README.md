# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# i.No DB Design

## users Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :favorites
- has_many :shops, through: :favorites

## favorites Table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|shop|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :shop

## shops Table 
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|null: false|
|tel|integer|null: false|
|town_id|integer|null: false|
|add|string|null: false|
|condition_id|integer|null: false|
|weekday_open|time|null: false|
|weekday_close|time|null: false|
|weekend_open|time|null: false|
|weekend_close|time|null: false|
|dayoff|string|null: false|
|owner_id|integer|------|
### Association
- belongs_to_active_hash :town
- belongs_to_active_hash :condition
- has_many :favorites
- has_many :users, through: :favorites