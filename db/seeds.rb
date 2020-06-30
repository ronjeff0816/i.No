# #User作成
# 5.times do |u|
#   User.create!(
#     name: "test-user#{u + 1}",
#     email: "test-email#{u + 1}@gmail.com",
#     password: "pAssWord#{u + 1}00",
#     owner_password: "Eat75iNo?"
#   )
# end

#Town作成
Town.create!(town_name: "上尾下")
Town.create!(town_name: "上尾宿")
Town.create!(town_name: "上尾村")
Town.create!(town_name: "浅間台")
Town.create!(town_name: "東町")
Town.create!(town_name: "畔吉")
Town.create!(town_name: "愛宕")
Town.create!(town_name: "泉台")
Town.create!(town_name: "壱丁目")
Town.create!(town_name: "井戸木")
Town.create!(town_name: "今泉")
Town.create!(town_name: "上野")
Town.create!(town_name: "上野本郷")
Town.create!(town_name: "大谷本郷")
Town.create!(town_name: "柏座")
Town.create!(town_name: "春日")
Town.create!(town_name: "上")
Town.create!(town_name: "上町")
Town.create!(town_name: "上平中央")
Town.create!(town_name: "川")
Town.create!(town_name: "瓦葺")
Town.create!(town_name: "久保")
Town.create!(town_name: "小泉")
Town.create!(town_name: "五番町")
Town.create!(town_name: "須賀谷")
Town.create!(town_name: "菅谷")
Town.create!(town_name: "堤崎")
Town.create!(town_name: "戸崎")
Town.create!(town_name: "中新井")
Town.create!(town_name: "仲町")
Town.create!(town_name: "中妻")
Town.create!(town_name: "中分")
Town.create!(town_name: "西貝塚")
Town.create!(town_name: "錦町")
Town.create!(town_name: "西宮下")
Town.create!(town_name: "西門前")
Town.create!(town_name: "原市")
Town.create!(town_name: "原市北")
Town.create!(town_name: "原市中")
Town.create!(town_name: "原新町")
Town.create!(town_name: "日の出")
Town.create!(town_name: "平方")
Town.create!(town_name: "平方領々家")
Town.create!(town_name: "平塚")
Town.create!(town_name: "藤波")
Town.create!(town_name: "富士見")
Town.create!(town_name: "二ツ宮")
Town.create!(town_name: "弁財")
Town.create!(town_name: "本町")
Town.create!(town_name: "緑ヶ丘")
Town.create!(town_name: "南")
Town.create!(town_name: "宮本町")
Town.create!(town_name: "向山")
Town.create!(town_name: "谷津")
Town.create!(town_name: "領家")

# #Shop作成
# a = rand(1..53)
# 5.times do |n|
#   Shop.create!(
#     shop_name: "test-shop#{n + 1}",
#     condition: 0,
#     introduction: "introduction#{n + 1}",
#     shop_tel: "#{408} - #{a}#{a+4} - #{n + 1}",
#     town_id: "#{a + n + 1}",
#     shop_add: "上尾市#{a}-#{a+2}-#{a+3}",
#     dayoff: "不定期",
#     corona_twoWays: 1,
#     corona_twoMeters: 1,
#     owner_id: "#{n + 1}",
#     weekday_open: "11:00:00",
#     weekday_close: "22:00:00",
#     weekend_open: "10:00:00",
#     weekend_close: "21:00:00"
#   )
# end

# #ShopImage作成
# 5.times do |i|
#   ShopImage.create!(
#    shop_id: "#{i + 1}",
#    image: File.open("./app/assets/images/test/testshop#{i + 1}.jpeg")
#   )
# end