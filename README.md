# README
- 出品者はitem.userで表現
- 購入者はitem.order.userで表現
- プルダウンメニューは各種モデル（クラス）で実装

## usersテーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| birth_date         | date   | null: false               |

### アソシエーション
has_many :items
has_many :orders



## itemsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| info                   | text       | null: false                    |
| category_id            | integer    | null: false                    |
| sales_status_id        | integer    | null: false                    |
| shipping_fee_status_id | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| scheduled_delivery_id  | integer    | null: false                    |
| price                  | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### アソシエーション
belongs_to :user
has_one    :order
belongs_to :category
belongs_to :sales_status
belongs_to :shipping_fee_status
belongs_to :prefecture
belongs_to :scheduled_delivery



## ordersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### アソシエーション
belongs_to :item
belongs_to :user
has_one :address



## addressesテーブル
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    |
| street_address   | string     | null: false                    |
| optional_address | string     |                                |
| phone_number     | string     | null: false                    |
| order            | references | null: false                    |

### アソシエーション
belongs_to :order
belongs_to :prefecture



## birth_yearsモデル（クラス）
- --
- 1930から2016（繰り返し処理でリスト作成）

## birth_monthsモデル（クラス）
- --
- 1から12（繰り返し処理でリスト作成）

## birth_daysモデル（クラス）
- --
- 1から31（繰り返し処理でリスト作成）

## categoriesモデル（クラス）
- ---
- レディース
- メンズ
- ベビー・キッズ
- インテリア・住まい・小物
- 本・音楽・ゲーム
- おもちゃ・ホビー・グッズ
- 家電・スマホ・カメラ
- スポーツ・レジャー
- ハンドメイド
- その他

## sales_statusesモデル（クラス）
- ---
- 新品・未使用
- 未使用に近い
- 目立った傷や汚れなし
- やや傷や汚れあり
- 傷や汚れあり
- 全体的に状態が悪い

## shipping_fee_statusesモデル（クラス）
- ---
- 着払い（購入者負担）
- 送料込み（出品者負担）

## prefecturesモデル（クラス）
- ---
- (47都道府県)

## scheduled_deliveriesモデル（クラス）
- ---
- 1〜2日で発送
- 2〜3日で発送
- 4〜7日で発送

