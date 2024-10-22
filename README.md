# テーブル設計

## usersテーブル

| Column                | Type    | Option      |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false, unique: true |
| encryped_password     | string  | null: false |
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
| item            | string     | null: false |
| explanation     | text       | null: false |
| category_id     | integer    | null: false |
| status_id       | integer    | null: false |
| shipping_fee_id | integer    | null: false |
| prefecture_id       | integer    | null: false |
| shipping_day_id | integer    | null: false |
| price           | integer    | null: false |
| user            | references | null: false, foreign_key: true|

### Association
- belongs_to :user

## orders テーブル

| Column  | Type       | Option      |
| ------- | ---------- | ----------- |
| user_id | integer    | null: false |
| item_id | integer    | null: false |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user

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