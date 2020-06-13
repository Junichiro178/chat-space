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

# Making Chat-Space DB
## users table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false,  unique: true|
|password|string|null: false|
### Asociation
- has_many :messages
- has_many :users_groups
- has_many :groups, through: :users_groups

## groups table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Asociation
- has_many :messages
- has_many :users_groups
- has_many :users, through: :users_groups

## users_groups table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Asociation
- belongs to :user
- belongs to :group

## messages table
|Column|Type|Options|
|------|----|-------|
|message|text||
|image|text||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Asociation
- belongs to :user
- belongs to :group
