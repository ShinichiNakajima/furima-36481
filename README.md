# README

## itemsテーブル

| Column        | Type      | Options                        |
| ------------- | --------- | ------------------------------ |
| name          | string    | null: false                    |
| price         | integer   | null: false                    |
| description   | text      | null: false                    |
| category      | integer   | null: false                    |
| condition     | integer   | null: false                    |
| postage_by    | integer   | null: false                    |
| prefecture    | integer   | null: false                    |
| delivery_days | integer   | null: false                    |
| user_id       | reference | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :transaction


## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |
| birth_date         | string | null: false |

### Association
- has_many :items
- has_many :transactions


## transactionsテーブル

| Column           | Type      | Options                        |
| ---------------- | --------- | ------------------------------ |
| card_number      | string    | null: false                    |
| expiry_date      | string    | null: false                    |
| security_code    | string    | null: false                    |
| postal_code      | string    | null: false                    |
| delivery_address | string    | null: false                    |
| phone_number     | string    | null: false                    |
| item_id          | reference | null: false, foreign_key: true |
| user_id          | reference | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item