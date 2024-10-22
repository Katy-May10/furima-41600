# テーブル設計

## usersテーブル

| Column                | Type    | Option      |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false, unique: true |
| password              | string  | null: false |
| password_confirmation | string  | null: false |
| last_name             | string  | null: false |
| first_name            | string  | null: false |
| last_name_reading     | string  | null: false |
| first_name_reading    | string  | null: false |
| birthday_year         | integer | null: false |
| birthday_month        | integer | null: false |
| birthday_date         | integer | null: false |

### Association
- has_many :items
- has_one :order

## items テーブル

| Column       | Type       | Option      |
| ------------ | ---------- | ----------- |
| item         | string     | null: false |
| explanation  | text       | null: false |
| category     | integer    | null: false |
| status       | integer    | null: false |
| shipping_fee | integer    | null: false |
| region       | integer    | null: false |
| shipping_day | integer    | null: false |
| price        | integer    | null: false |
| user         | references | null: false, foreign_key: true|

### Association
- belongs_to :user

## orders テーブル

| Column        | Type       | Option      |
| ------------- | ---------- | ----------- |
| postal_code   | integer    | null: false |
| prefecture    | integer    | null: false |
| city          | string     | null: false |
| house_number  | integer    | null: false |
| building_name | string     | null: false |
| phone         | integer    | null: false |
| user          | references | null: false, foreign_key: true |

### Association
- belongs_to :user