Category.destroy_all
Event.destroy_all
Community.destroy_all
About.destroy_all
HomeBanner.destroy_all
LoginSlide.destroy_all

puts "Seeding..."

User.create!( email: "wesadmin@gmail.com", password: "12345678", password_confirmation: "12345678", role: "admin" )

puts "Categories..."

event_category1 = Category.create(title:"Music",banner_img:"https://img.freepik.com/premium-photo/guitarist-stage-background-soft-blur-concept_34200-251.jpg?w=1800")

event_category2 = Category.create(title:"Business",banner_img:"https://img.freepik.com/premium-psd/business-promotion-corporate-web-banner-template_120329-748.jpg?w=1380")

event_category3 = Category.create(title:"Games",banner_img:"https://img.freepik.com/free-psd/flat-design-video-games-template_23-2149287300.jpg?w=1380&t=st=1666405384~exp=1666405984~hmac=ca774ed95e1223ffa38e863cab0bb5b5f749c0c9d7df009e08b36e9f24712909")

event_category4 = Category.create(title:"Hobbies",banner_img:"https://img.freepik.com/free-vector/set-young-people-with-various-professions_74855-3784.jpg?w=1380&t=st=1666405791~exp=1666406391~hmac=8911666a4b638cebb82a60a50ec0fe4312f0d1d0a3f2b85025f49c342da7e3df")

event_category5 = Category.create(title:"Food & Drink",banner_img:"https://img.freepik.com/free-vector/bio-healthy-food-banner_23-2148852378.jpg?w=1380&t=st=1666405704~exp=1666406304~hmac=d9bb76f60ceb6814c634f432f01e8a4ef216f9d34038a15c0e57cd4c0a7286cf")

event_category6 = Category.create(title:"Performing Arts",banner_img:"https://png.pngtree.com/background/20210709/original/pngtree-passion-concert-background-picture-image_480410.jpg")

event_category7 = Category.create(title:"Sciences",banner_img:"https://wallpapercave.com/wp/wp2668346.jpg")

event_category8 = Category.create(title:"Sport & Fitness",banner_img:"https://img.freepik.com/free-psd/sport-tech-social-media-post-template_23-2148523619.jpg?w=1380&t=st=1666406214~exp=1666406814~hmac=d4dcedec12b55d94f4828c85f98e6d3a7a86022db951fc0532c1009e942d7c04")

puts "events..."

event1 = Event.create(category_id:event_category1.id,title:"Afrika Concert",
    event_start_date:"2022-12-12T20:00", 
    event_end_date:"2022-12-13T00:00", user_id: 1, ticket_format:"MusAfri",early_booking_end_date:"2022-11-19T00:00", early_booking_price_regular:1200,early_booking_price_vip:2000,location:"afraha stadium Nakuru",regular_price:1500,vip_price:2300,vip_no_of_tickets:1000,regular_no_of_tickets:4000,banner_img:"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/03cb6529519371.55f73f143423d.png",description:"Enjoy our african diverse culture.",image_url1:"https://client.mtickets.com/storage/display_images/ZqOFIpZKfi5HA3Q7ES1I9ork2lr0DaFIhekNWwl6.jpeg",image_url2:"https://live.staticflickr.com/7345/9133491896_aea198c278_c.jpg")

event2 = Event.create(category_id:event_category1.id,title:"Afro Concert",
    event_start_date:"2022-12-1T22:00", 
    event_end_date:"2022-12-2T00:00", user_id: 1, ticket_format:"MusAfro",early_booking_end_date:"2022-11-19T20:00", early_booking_price_regular:3000,early_booking_price_vip:5000,location:"Nyali mall Mombasa",regular_price:5000,vip_price:7500,vip_no_of_tickets:"1000",regular_no_of_tickets:12000,banner_img:"https://mutcomm.com/wp-content/uploads/2022/04/AFROROOTS_FB_EVENT-BANNER-1.jpg",description:"An event bringing together top artists across Africa to meet fans",image_url1:"https://i.pinimg.com/originals/b3/0a/97/b30a97c9f1b96680effea28553c047b2.png",image_url2:"https://i.pinimg.com/736x/62/78/f8/6278f812c9617879c3d3535fb1003a36.jpg")

event3 = Event.create(category_id:event_category2.id,title:"BusyFinance",
    event_start_date:"2022-10-10T10:00", 
    event_end_date:"2022-10-10T13:00", user_id: 1, ticket_format:"BusFinc",early_booking_end_date:"2022-10-03T00:00", early_booking_price_regular:1200,early_booking_price_vip:1200,location:"Gateway mall Syokimau",regular_price:1200,vip_price:1200,vip_no_of_tickets:1000,regular_no_of_tickets:1000,banner_img:"https://www.varsboffin.com/images/business-finance-banner.jpg",description:"Where solutions to your financial problems are sort. how best to manage finance",image_url1:"https://www.dmu.ac.uk/webimages/study-images/courses/business-and-law/postgraduate/international-business-and-finance-img-02.jpg",image_url2:"https://media.istockphoto.com/photos/technical-financial-graph-on-technology-abstract-background-picture-id639666654?k=20&m=639666654&s=612x612&w=0&h=1xl981xcYy5J4LFQHaWRV50cDp8V1sbERtmfokDqMTw=")

event4 = Event.create(category_id:event_category2.id,title:"GooBad marketing",
    event_start_date:"2022-10-20T09:00", 
    event_end_date:"2022-10-20T10:00", ticket_format:"BusGooB",early_booking_end_date:"2022-10-10T08:00", early_booking_price_regular:1000,early_booking_price_vip:1000,location:"Junction Mall Nairobi",regular_price:1000,vip_price:1000,vip_no_of_tickets:1000,regular_no_of_tickets:1000,banner_img:"https://thumbs.dreamstime.com/b/digital-marketing-banner-background-icons-seo-e-commerce-etc-digital-marketing-banner-background-icons-seo-e-190671640.jpg",description:"Seeking to educate the public on how to best market their products when seeking customers",image_url1:"https://img.freepik.com/free-photo/digital-marketing-with-icons-business-people_53876-94833.jpg?w=2000",image_url2:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE5w0Xbm2AiDITkBWCgbXaoc9QhkkEwKaC2ZGldLJsoQ&s",
    user_id: 1
)

event5 = Event.create(category_id:event_category3.id,title:"Black Desert Online Tournament",
    event_start_date:"2022-12-12T08:00", 
    event_end_date:"2022-12-14T06:00", ticket_format:"BDOTourney",early_booking_end_date:"2022-12-01T08:00", early_booking_price_regular:1000,early_booking_price_vip:1000,location:"Westgate Mall Nairobi",regular_price:2000,vip_price:2000,vip_no_of_tickets:500,regular_no_of_tickets:500,banner_img:"https://static-cdn.jtvnw.net/jtv_user_pictures/75c59cde-da4d-4f2d-9395-db32808dafed-profile_banner-480.png",
    description:"The combat in Black Desert Online is action based, requiring manual aiming and free movement similar to those found in third-person shooters. The game offers housing, fishing, farming, and trading, as well as large player versus player siege events, and castle battles. It is well regarded for its advanced and in-depth character customization. An active combat system requires precise manual aiming, dodging and using combos, unlike the tab-targeting system seen in most MMORPGs. Skills can be activated through use of combos for attacking, dodging or blocking. Players are also able to engage in mounted combat. Mounts are acquired by taming in the wild, and players are able to breed special mounts by mating certain types. Mounts require feeding and care, cannot be stored in the inventory, and may be killed.",
    image_url1:"https://p4.wallpaperbetter.com/wallpaper/944/720/921/video-game-black-desert-online-wallpaper-preview.jpg",
    image_url2:"https://p4.wallpaperbetter.com/wallpaper/925/286/432/video-game-black-desert-online-warrior-black-desert-online-wallpaper-preview.jpg",
    user_id: 1
)

event6 = Event.create(category_id:event_category3.id,title:"CheckChess",
    event_start_date:"2022-12-20T09:00", 
    event_end_date:"2022-12-20T17:00", ticket_format:"GamChek",early_booking_end_date:"2022-12-10T08:00", early_booking_price_regular:2000,early_booking_price_vip:2000,location:"Desert Rose Nairobi",regular_price:2000,vip_price:2000,vip_no_of_tickets:2500,regular_no_of_tickets:2500,
    banner_img:"https://p4.wallpaperbetter.com/wallpaper/809/812/33/fate-stay-night-chess-wallpaper-preview.jpg",
    description:"The Kenyan National Chess Championship is an annual individual chess tournament typically held in December and organized by Chess Kenya. It serves as the flagship event of the year and the first stage of the qualification system for the Chess Olympiad and the All African Games. Battle for it. Winner gets a 300,000 reward.Come with own Food and drink",
    image_url1:"https://p4.wallpaperbetter.com/wallpaper/736/333/117/anime-anime-girls-no-game-no-life-chess-stars-hd-wallpaper-preview.jpg",
    image_url2:"https://p4.wallpaperbetter.com/wallpaper/552/936/860/cat-toy-the-game-chess-chess-player-hd-wallpaper-preview.jpg",
    user_id: 1
)

puts "Communities..."

10.times do
    Community.create(
        community_description: Faker::Lorem.paragraphs * 4,
        community_img: [
            "https://p4.wallpaperbetter.com/wallpaper/1019/329/279/city-community-crossing-crowd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/334/381/263/internet-world-communication-technology-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/425/996/41/technics-computer-technology-internet-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/619/167/677/community-feet-friends-friendship-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/364/47/630/technology-communication-antenna-parabolic-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/189/249/254/clouds-mountains-the-city-lake-reflection-hd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/293/144/62/weapons-mask-gas-mask-machines-wallpaper-preview.jpg"

        ].sample
    )
end

puts "about us..."

10.times do
    About.create(
        about_description: Faker::Lorem.paragraphs * 4,
        about_img: [
            "https://p4.wallpaperbetter.com/wallpaper/293/849/300/las-fallas-burning-of-giant-puppets-holiday-valencian-community-spring-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/340/322/396/advice-advise-advisor-business-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/617/713/266/tokyo-revengers-manga-hd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/659/82/514/tokyo-revengers-anime-hd-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/482/480/979/prison-school-morokuzu-takehito-wakamoto-shingo-nezu-j%C5%8Dji-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/499/426/474/anime-crossover-ainz-ooal-gown-albedo-overlord-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/112/350/407/criminal-minds-wallpaper-preview.jpg",
            "https://p4.wallpaperbetter.com/wallpaper/293/144/62/weapons-mask-gas-mask-machines-wallpaper-preview.jpg"
            
        ].sample
    )
end

puts "HomeBanners..."

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://p4.wallpaperbetter.com/wallpaper/762/486/529/the-banner-saga-video-games-artwork-concept-art-wallpaper-preview.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://wallpapercave.com/wp/wp7549147.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://wallpaperaccess.com/full/8061649.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://p4.wallpaperbetter.com/wallpaper/196/761/195/game-of-thrones-house-crests-assorted-yellow-red-and-black-wolf-banners-wallpaper-preview.jpg"
)

HomeBanner.create(
    title: Faker::Lorem.sentence,
    image_url: "https://wallpaperaccess.com/full/7112373.jpg"
)

puts "slides..."

7.times do
    LoginSlide.create!(
        title: Faker::Lorem.sentence,
        image_url: [
            "https://images.pexels.com/photos/382297/pexels-photo-382297.jpeg?auto=compress&cs=tinysrgb&w=800",
            "https://wallpapercave.com/wp/wp10715820.jpg",
            "https://c1.wallpaperflare.com/preview/910/723/666/piano-concert-hall-steinway.jpg",
            "https://wallpapercave.com/wp/wp10715800.jpg",
            "https://wallpapercave.com/wp/wp10715768.jpg",
        ].sample
    )
end

puts "Done Seeding"