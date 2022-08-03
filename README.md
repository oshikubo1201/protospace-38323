# README
#テーブル設計

＃＃usersテーブル

|Colmun              | Type    | option     |
|--------------------|---------|------------|-----
|email               | string  | null: false|
|encrypted_password  | string  | null: false| 
|name                | string  | null: false|
|profile             | text    | null: false|
|occupation          | text    | null: false|
|position            | text    | null: false|

###association
has_many :prototypes
has_many :comments


##prototypes

|Colmun              | Type        | option                        |
|--------------------|-------------|-------------------------------|-----
|title               | string      | null: false                   |
|catch_copy          | text        | null: false                   |   
|concept             | text        | null: false                   |
|user                | references  | null: false, foreign_key: true|

###association
belongs_to :users
has_many :comments


##comments

|Colmun              | Type        | option                        |
|--------------------|-------------|-------------------------------|-----
|content             | text        | null: false                   |
|prototypes          | references  | null: false, foreign_key: true| 
|user                | references  | null: false, foreign_key: true|

###association
belongs_to :users
belongs_to :prototypes