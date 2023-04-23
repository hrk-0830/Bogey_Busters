class Post < ApplicationRecord
  has_one_attached :image

  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end

  belongs_to :customer
  has_many :tag_lists, dependent: :destroy
  has_many :tags, through: :tag_lists
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy

  validates :golf_course, presence: true
  validates :title, presence: true
  validates :prefecture_status, presence: true
  validates :difficulty_status, presence: true
  validates :review, presence: true
  validates :star, presence: true

  def self.looks(search, word)
    if search == "perfect_match"
      @post = Post.where("golf_course LIKE?","#{word}")
    elsif search == "forward_match"
      @post = Post.where("golf_course LIKE?","#{word}%")
    elsif search == "backward_match"
      @post = Post.where("golf_course LIKE?","%#{word}")
    elsif search == "partial_match"
      @post = Post.where("golf_course LIKE?","%#{word}%")
    else
      @post = Post.all
    end
  end

  def favorited?(customer)
   favorites.exists?(customer_id: customer.id)
  end

  def save_tags(tags)

    # タグをスペース区切りで分割し配列にする
    #   連続した空白も対応するので、最後の“+”がポイント
    tag_list = tags.split(/[[:blank:]]+/)

    # 自分自身に関連づいたタグを取得する
    current_tags = self.tags.pluck(:name)

    # (1) 元々自分に紐付いていたタグと投稿されたタグの差分を抽出
    #   -- 記事更新時に削除されたタグ
    old_tags = current_tags - tag_list

    # (2) 投稿されたタグと元々自分に紐付いていたタグの差分を抽出
    #   -- 新規に追加されたタグ
    new_tags = tag_list - current_tags

    p current_tags

    # tag_mapsテーブルから、(1)のタグを削除
    #   tagsテーブルから該当のタグを探し出して削除する
    old_tags.each do |old|
      # tag_mapsテーブルにあるpost_idとtag_idを削除
      #   後続のfind_byでtag_idを検索
      self.tags.delete Tag.find_by(name: old)
    end

    # tagsテーブルから(2)のタグを探して、tag_mapsテーブルにtag_idを追加する
    new_tags.each do |new|
      # 条件のレコードを初めの1件を取得し1件もなければ作成する
      # find_or_create_by : https://railsdoc.com/page/find_or_create_by
      new_post_tag = Tag.find_or_create_by(name: new)

      # tag_mapsテーブルにpost_idとtag_idを保存
      #   配列追加のようにレコードを渡すことで新規レコード作成が可能
      self.tags << new_post_tag
    end

  end

  enum prefecture_status: {
     "---":0,
     北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
     茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
     新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
     岐阜県:21,静岡県:22,愛知県:23,三重県:24,
     滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
     鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
     徳島県:36,香川県:37,愛媛県:38,高知県:39,
     福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,
     沖縄県:47
  }

     enum difficulty_status: {
       初級:0, 中級:1, 上級:2
     }
end
