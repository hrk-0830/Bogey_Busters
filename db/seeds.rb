# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@example.com',
  password: 'admin1',
  )

customers = Customer.create!(
  [
    {
      name: "太郎",
      email: "taro@example.com",
      password: "password",
      introduction: "ゴルフを始めたばかりでまだまだ初心者ですが、日々精進しています。",
      best_score: 90,
      residence_status: '東京都',
      technique_status: '中級者',
      golf_history: 3
    },
    {
      name: "花子",
      email: "hanako@example.com",
      password: "password",
      introduction: "ゴルフを始めて数年が経ちました。",
      best_score: 85,
      residence_status: '大阪府',
      technique_status: '上級者',
      golf_history: 4
    },
    {
      name: "次郎",
      email: "jiro@example.com",
      password: "password",
      introduction: "ゴルフ歴はまだ浅いですが、練習に励んでいます。",
      best_score: 95,
      residence_status: '福岡県',
      technique_status: '初級者',
      golf_history: 2
    }
  ]
)

posts = Post.create!(
  [
    {golf_course: '北海道ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '北海道',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 5,customer_id: customers[1][:id]},
    {golf_course: '青森ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '青森県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '中級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[2][:id]},
    {golf_course: '岩手ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '岩手県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '宮城ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '宮城県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '上級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '秋田ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '秋田県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '中級',review: 'このゴルフ場は本当に素晴らしいです。コースは美しく整備されており、プレーがとても楽しいです。また、スタッフの方々もとても親切で、心地よいラウンディング体験を提供してくれました。',star: 5,customer_id: customers[2][:id]},
    {golf_course: '山形ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '山形県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '福島ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '福島県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '茨城ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '茨城県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '中級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[2][:id]},
    {golf_course: '栃木ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '栃木県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '上級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[0][:id]},
    {golf_course: '群馬ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '群馬県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '千葉ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '千葉県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '東京ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '東京都',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 3,customer_id: customers[0][:id]},
    {golf_course: '埼玉ゴルフ倶楽部',title: '手軽に楽しめるローカルなゴルフ場',prefecture_status: '埼玉県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '中級',review: 'このゴルフ場は本当に素晴らしいです。コースは美しく整備されており、プレーがとても楽しいです。また、スタッフの方々もとても親切で、心地よいラウンディング体験を提供してくれました。',star: 5,customer_id: customers[1][:id]},
    {golf_course: '神奈川ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '神奈川県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '新潟ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '新潟県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '上級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[0][:id]},
    {golf_course: '富山ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '富山県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[1][:id]},
    {golf_course: '石川ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '石川県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '上級',review: 'このゴルフ場はコースが本当に難しいです。トリッキーな配置や難しいバンカーがあり、チャレンジングなラウンドが楽しめます。ただし、初心者の方には少し難しいかもしれません。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '福井ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '福井県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '中級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[0][:id]},
    {golf_course: '山梨ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '山梨県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '上級',review: 'このゴルフ場はコースが本当に難しいです。トリッキーな配置や難しいバンカーがあり、チャレンジングなラウンドが楽しめます。ただし、初心者の方には少し難しいかもしれません。',star: 4,customer_id: customers[1][:id]},
    {golf_course: '長野ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '長野県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 5,customer_id: customers[2][:id]},
    {golf_course: '岐阜ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '岐阜県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 3,customer_id: customers[0][:id]},
    {golf_course: '静岡ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '静岡県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[1][:id]},
    {golf_course: '愛知ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '愛知県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '上級',review: 'このゴルフ場はコースが本当に難しいです。トリッキーな配置や難しいバンカーがあり、チャレンジングなラウンドが楽しめます。ただし、初心者の方には少し難しいかもしれません。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '三重ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '三重県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '滋賀ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '滋賀県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[1][:id]},
    {golf_course: '京都ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '京都府',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '上級',review: 'このゴルフ場は本当に素晴らしいです。コースは美しく整備されており、プレーがとても楽しいです。また、スタッフの方々もとても親切で、心地よいラウンディング体験を提供してくれました。',star: 5,customer_id: customers[2][:id]},
    {golf_course: '大阪ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '大阪府',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '兵庫ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '兵庫県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '奈良ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '奈良県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '和歌山ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '和歌山県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '初級',review: 'このゴルフ場は本当に素晴らしいです。コースは美しく整備されており、プレーがとても楽しいです。また、スタッフの方々もとても親切で、心地よいラウンディング体験を提供してくれました。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '鳥取ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '鳥取県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '上級',review: 'このゴルフ場はコースが本当に難しいです。トリッキーな配置や難しいバンカーがあり、チャレンジングなラウンドが楽しめます。ただし、初心者の方には少し難しいかもしれません。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '島根ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '島根県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[2][:id]},
    {golf_course: '岡山ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '岡山県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 3,customer_id: customers[0][:id]},
    {golf_course: '広島ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい計',prefecture_status: '広島県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '山口ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '山口県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '徳島ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '徳島県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '上級',review: 'このゴルフ場はコースが本当に難しいです。トリッキーな配置や難しいバンカーがあり、チャレンジングなラウンドが楽しめます。ただし、初心者の方には少し難しいかもしれません。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '香川ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '香川県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 5,customer_id: customers[1][:id]},
    {golf_course: '愛知ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '愛媛県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '高知ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '高知県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '福岡ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '福岡県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '中級',review: 'このゴルフ場のグリーンは、他のどのコースよりも速いです。狭いフェアウェイやタイトなラインがありますが、ショットを正確に打てば、スコアを伸ばすことができます。',star: 4,customer_id: customers[1][:id]},
    {golf_course: '佐賀ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '佐賀県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '上級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[2][:id]},
    {golf_course: '長崎ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '長崎県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '熊本ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '熊本県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image3.jpg"), filename:"sample_image3.jpg"),difficulty_status: '上級',review: 'このゴルフ場は、クラブハウスの設備が充実しています。レストランやシャワー室が清潔で、ゆっくりとした時間を過ごすことができました。ただし、コースはやや混雑しているようで、待ち時間が長いことがありました。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '大分ゴルフ倶楽部',title: 'メンテナンスが行き届いていた',prefecture_status: '大分県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image4.jpg"), filename:"sample_image4.jpg"),difficulty_status: '中級',review: 'このゴルフ場は本当に素晴らしいです。コースは美しく整備されており、プレーがとても楽しいです。また、スタッフの方々もとても親切で、心地よいラウンディング体験を提供してくれました。',star: 4,customer_id: customers[2][:id]},
    {golf_course: '鹿児島ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '鹿児島県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image5.jpg"), filename:"sample_image5.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 4,customer_id: customers[0][:id]},
    {golf_course: '宮崎ゴルフ倶楽部',title: 'ゴルフ初心者にも優しい',prefecture_status: '宮崎県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image1.jpg"), filename:"sample_image1.jpg"),difficulty_status: '初級',review: 'このゴルフ場は、リーズナブルな価格でプレーできるコースとして有名です。コースのメンテナンスは十分ではないかもしれませんが、初心者やスコアにこだわらない方にはおすすめです。',star: 3,customer_id: customers[1][:id]},
    {golf_course: '沖縄ゴルフ倶楽部',title: '挑戦的で忘れられない',prefecture_status: '沖縄県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample_image2.jpg"), filename:"sample_image2.jpg"),difficulty_status: '上級',review: 'このゴルフ場はコースが本当に難しいです。トリッキーな配置や難しいバンカーがあり、チャレンジングなラウンドが楽しめます。ただし、初心者の方には少し難しいかもしれません。',star: 3,customer_id: customers[2][:id]},
  ]
)

tags = Tag.create!(
  [
  {name: '食事'},
  {name: 'コースコンディション'},
  {name: 'プレーの難易度'},
  {name: 'コースデザイン'},
  {name: 'グリーン'},
  {name: 'バンカー'}
  ]
)

TagList.create!(
  [
  {post_id: posts[0][:id], tag_id: tags[0][:id]},
  {post_id: posts[0][:id], tag_id: tags[1][:id]},
  {post_id: posts[0][:id], tag_id: tags[2][:id]},
  {post_id: posts[1][:id], tag_id: tags[0][:id]},
  {post_id: posts[1][:id], tag_id: tags[1][:id]},
  {post_id: posts[1][:id], tag_id: tags[2][:id]},
  {post_id: posts[1][:id], tag_id: tags[3][:id]},
  {post_id: posts[2][:id], tag_id: tags[0][:id]},
  {post_id: posts[2][:id], tag_id: tags[1][:id]},
  {post_id: posts[2][:id], tag_id: tags[2][:id]},
  {post_id: posts[2][:id], tag_id: tags[3][:id]},
  {post_id: posts[2][:id], tag_id: tags[4][:id]},
  {post_id: posts[3][:id], tag_id: tags[0][:id]},
  {post_id: posts[3][:id], tag_id: tags[1][:id]},
  {post_id: posts[3][:id], tag_id: tags[2][:id]},
  {post_id: posts[3][:id], tag_id: tags[3][:id]},
  {post_id: posts[4][:id], tag_id: tags[0][:id]},
  {post_id: posts[4][:id], tag_id: tags[1][:id]},
  {post_id: posts[4][:id], tag_id: tags[2][:id]},
  {post_id: posts[4][:id], tag_id: tags[3][:id]},
  {post_id: posts[5][:id], tag_id: tags[3][:id]},
  {post_id: posts[5][:id], tag_id: tags[4][:id]},
  {post_id: posts[5][:id], tag_id: tags[5][:id]},
  {post_id: posts[6][:id], tag_id: tags[0][:id]},
  {post_id: posts[6][:id], tag_id: tags[3][:id]},
  {post_id: posts[7][:id], tag_id: tags[1][:id]},
  {post_id: posts[7][:id], tag_id: tags[3][:id]},
  {post_id: posts[8][:id], tag_id: tags[0][:id]},
  {post_id: posts[8][:id], tag_id: tags[1][:id]},
  {post_id: posts[8][:id], tag_id: tags[2][:id]},
  {post_id: posts[9][:id], tag_id: tags[0][:id]},
  {post_id: posts[9][:id], tag_id: tags[2][:id]},
  {post_id: posts[9][:id], tag_id: tags[3][:id]},
  {post_id: posts[10][:id], tag_id: tags[2][:id]},
  {post_id: posts[10][:id], tag_id: tags[3][:id]},
  {post_id: posts[10][:id], tag_id: tags[4][:id]},
  {post_id: posts[11][:id], tag_id: tags[5][:id]},
  {post_id: posts[12][:id], tag_id: tags[0][:id]},
  {post_id: posts[13][:id], tag_id: tags[1][:id]},
  {post_id: posts[14][:id], tag_id: tags[2][:id]},
  {post_id: posts[15][:id], tag_id: tags[3][:id]},
  {post_id: posts[16][:id], tag_id: tags[4][:id]},
  {post_id: posts[17][:id], tag_id: tags[5][:id]},
  {post_id: posts[18][:id], tag_id: tags[0][:id]},
  {post_id: posts[19][:id], tag_id: tags[1][:id]},
  {post_id: posts[20][:id], tag_id: tags[2][:id]},
  {post_id: posts[21][:id], tag_id: tags[3][:id]},
  {post_id: posts[22][:id], tag_id: tags[4][:id]},
  {post_id: posts[23][:id], tag_id: tags[5][:id]},
  {post_id: posts[24][:id], tag_id: tags[0][:id]},
  {post_id: posts[25][:id], tag_id: tags[1][:id]},
  {post_id: posts[26][:id], tag_id: tags[2][:id]},
  {post_id: posts[27][:id], tag_id: tags[3][:id]},
  {post_id: posts[28][:id], tag_id: tags[4][:id]},
  {post_id: posts[29][:id], tag_id: tags[5][:id]},
  {post_id: posts[30][:id], tag_id: tags[0][:id]},
  {post_id: posts[31][:id], tag_id: tags[1][:id]},
  {post_id: posts[32][:id], tag_id: tags[2][:id]},
  {post_id: posts[33][:id], tag_id: tags[3][:id]},
  {post_id: posts[34][:id], tag_id: tags[4][:id]},
  {post_id: posts[35][:id], tag_id: tags[5][:id]},
  {post_id: posts[36][:id], tag_id: tags[0][:id]},
  ]
)