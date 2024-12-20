# テーブル設計

## usersテーブル

| Column                | Type    | Option      |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false |
| last_name             | string  | null: false |
| first_name            | string  | null: false |
| last_name_reading     | string  | null: false |
| first_name_reading    | string  | null: false |
| birthday              | date    | null: false |

### Association
- has_many :items
- has_many :orders

## items テーブル

| Column          | Type       | Option      |
| --------------- | ---------- | ----------- |
| name            | string     | null: false |
| explanation     | text       | null: false |
| category_id     | integer    | null: false |
| status_id       | integer    | null: false |
| shippingfee_id | integer    | null: false |
| prefecture_id   | integer    | null: false |
| shippingday_id | integer    | null: false |
| price           | integer    | null: false |
| user            | references | null: false, foreign_key: true|

### Association
- belongs_to :user
- has_one :order

## orders テーブル

| Column  | Type       | Option      |
| ------- | ---------- | ----------- |
| user | references | null: false, foreign_key: true |
| item | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column           | Type       | Option      |
| ---------------- | ---------- | ----------- |
| postal_code      | string     | null: false |
| prefecture_id    | integer    | null: false |
| city             | string     | null: false |
| house_number     | string     | null: false |
| building_name    | string     |             |
| phone            | string     | null: false |
| order            | references | null: false, foreign_key: true |

### Association
- belongs_to :order