User.destroy_all


user1 = User.create(name: "Bill", surname: "Gates", email: "bill@gates.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Married", livingplace: "12 york st, Sydney", language: "English", image: "https://www.project-syndicate.org/default/library/eb7a653970f377481252dbb4a16923f2.square.jpg")
user2 = User.create(name: "Nick", surname: "Johnson", email: "nick@johnson.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Married", livingplace: "opera house Sydney", language: "English", image: "http://allsportstucson.com/wp-content/uploads/2014/01/2013.14.NJohnson.jpg")
user3 = User.create(name: "Zeppo", surname: "Marx", email: "zeppo@marx.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Single", livingplace: "12 gladstone street, balmain", language: "English", image: "https://s-media-cache-ak0.pinimg.com/236x/f5/7d/6c/f57d6cdf4a629dfcbae58ab253d0a887.jpg")
user4 = User.create(name: "Groucho", surname: "Marx", email: "groucho@marx.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Single", livingplace: "45 elizabeth street, sydney, nsw", language: "English", image: "http://www.nndb.com/people/855/000031762/groucho2-sm.jpg")
user5 = User.create(name: "Harpo", surname: "Marx", email: "harpo@marx.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Single", livingplace: "56 York st, sydney, nsw", language: "English", image: "https://static.comicvine.com/uploads/original/6/64684/1376887-harpo_marx_5.jpg")
user6 = User.create(name: "Gummo", surname: "Marx", email: "gummo@marx.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Single", livingplace: "22 George st, sydney, nsw", language: "English", image: "http://3.bp.blogspot.com/--30y2A2GA2M/TcNgy6-S4II/AAAAAAAAA3k/RT3Xx5GPSq8/s320/zeppo.jpg")
user7 = User.create(name: "Donald", surname: "Trump", email: "donald@trump.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Available", livingplace: "120 eppin rd, Lane cove", language: "English", image: "https://pbs.twimg.com/profile_images/1297925528/donald-trump_400x400.jpg")
user8 = User.create(name: "Nicole", surname: "Kidman", email: "nicole@kidman.com", password: "chicken", password_confirmation: "chicken", gender: "female", birthday: "10/10/1942", relationship: "Married", livingplace: "33 parramatta road, five dock", language: "English", image: "http://www.topnews.in/files/Nicole-Kidman_1.jpg")
user9 = User.create(name: "Angelina", surname: "Julie", email: "angelina@julie.com", password: "chicken", password_confirmation: "chicken", gender: "female", birthday: "10/10/1942", relationship: "Divorced", livingplace: "22 hunter street, parramatta", language: "English", image: "http://cdn03.cdn.justjared.com/wp-content/uploads/headlines/2017/03/angelina-jolie-meets-with-archbishop.jpg")
user10 = User.create(name: "David", surname: "Beckham", email: "david@beckham.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Married", livingplace: "6 carr st, waverton", language: "English", image: "http://www.hellomagazine.com/imagenes/profiles/david-beckham/6301-david-beckham.jpg.jpg")
user11 = User.create(name: "Salman", surname: "khan", email: "salman@khan.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Defacto", livingplace: "33 carr st, waverton", language: "English", image: "http://images.desimartini.com/media/uploads/salman_khan_kick.jpg")
user12 = User.create(name: "Barack", surname: "Obama", email: "barack@obama.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Married", livingplace: "134-136 walker st, North Sydney", language: "English", image: "https://s-media-cache-ak0.pinimg.com/236x/6f/ce/6a/6fce6aeb696fc98214ebe296db1f4cf5.jpg")
user13 = User.create(name: "Matt",surname: "Toussi", email: "matt@toussi.com", password: "chicken", password_confirmation: "chicken", gender: "male", birthday: "10/10/1942", relationship: "Single", livingplace: "108 victoria street, ashfield ", language: "Persian", image: "http://4vector.com/i/free-vector-male-user-icon-clip-art_117343_Male_User_Icon_clip_art_medium.png")

p "Users: #{ User.count }"


Activity.destroy_all

activity1 = Activity.create(name: "Javascript Meetup", event_date: "01/07/2107", event_time: "6:00PM" ,description: "monthly Js meeting ", location: "56 york st,Sydney", image: "https://vladfilippov.com/wp-content/uploads/2015/08/img_55c0441047859.png", user_id: user13.id )
activity2 = Activity.create(name: "Watch Movie", event_date: "05/07/2107", event_time: "8:30PM" ,description: "watch New Mummy movie at cinema", location: "56 york st,Sydney", image: "https://upload.wikimedia.org/wikipedia/en/f/fc/The_Mummy_Trilogy_Blu-ray_Boxset.jpg", user_id: user13.id )
activity3 = Activity.create(name: "Halloween Party", event_date: "05/07/2107", event_time: "9:30PM" ,description: "Halloween Party Darling Harbour", location: "56 york st,Sydney", image: "http://1.bp.blogspot.com/_RF_WbIGHmRA/S4amyEsYspI/AAAAAAAAAyk/bNplVQfMKsQ/s320/dibujos-halloween-murcielagos.jpg", user_id: user3.id )
activity4 = Activity.create(name: "Vivid Sydney", event_date: "05/07/2107", event_time: "8:30PM" ,description: "Sydney opera house ", location: "56 york st,Sydney", image: "https://assets.atdw-online.com.au/images/d8acacd20b8308ef9c39f3a8540d9b27.jpeg?rect=0,0,2048,1536&w=445&h=334", user_id: user13.id )
activity5 = Activity.create(name: "Flume Live Concert", event_date: "05/07/2107", event_time: "7:30PM" ,description: "Flume Live at stadium", location: "56 york st,Sydney", image: "http://www.yenmag.net/wp-content/uploads/2013/02/FLUME-500x290-copy.jpg", user_id: user5.id )
activity6 = Activity.create(name: "Fishing", event_date: "15/07/2107", event_time: "6:30PM" ,description: "fishing at palm beach area", location: "56 york st,Sydney", image: "http://img.freepik.com/free-photo/lone-fisherman_2478119.jpg?size=338&ext=jpg", user_id: user6.id )
activity7 = Activity.create(name: "Rock Climbing", event_date: "15/07/2107", event_time: "8:30AM" ,description: "indoor rock climibing", location: "56 york st,Sydney", image: "https://media.timeout.com/images/103085834/image.jpg", user_id: user13.id )
activity8 = Activity.create(name: "Sky Diving", event_date: "15/07/2107", event_time: "8:30AM" ,description: "Woloongang sky diving 40000 feet dive", location: "56 york st,Sydney", image: "https://media-cdn.tripadvisor.com/media/photo-s/04/36/8e/9f/skydive-the-beach-sydney.jpg", user_id: user8.id )
activity9 = Activity.create(name: "Dancing", event_date: "15/07/2107", event_time: "10:00PM" ,description: "Drink and dance at Pelicano", location: "56 york st,Sydney", image: "https://image.slidesharecdn.com/drinkdancelaugh-1224969463952003-9/95/drink-dance-laugh-1-728.jpg?cb=1224944289", user_id: user9.id )

p "Activities: #{ Activity.count }"


Interest.destroy_all

interest1 = Interest.create(name: "Programming")
interest1.activities << activity1
interest2 = Interest.create(name: "Drinking")
interest2.activities << activity2
interest3 = Interest.create(name: "Watch Movies")
interest3.activities << activity3
interest4 = Interest.create(name: "Playing Golf")
interest4.activities << activity4
interest5 = Interest.create(name: "Dancing")
interest5.activities << activity5
interest6 = Interest.create(name: "Sports")
interest6.activities << activity6
interest7 = Interest.create(name: "Science")
interest7.activities << activity7
interest8 = Interest.create(name: "Fishing")
interest8.activities << activity8
interest9 = Interest.create(name: "Surfing")
interest9.activities << activity9
interest10 = Interest.create(name: "Fashion")
interest10.activities << activity9

p "Interests: #{ Interest.count }"

user1.interests << interest1 << interest2 << interest5 << interest10
user2.interests << interest2
user3.interests << interest3
user4.interests << interest4
user5.interests << interest5
user6.interests << interest6
user7.interests << interest7
user8.interests << interest8
user9.interests << interest9
user10.interests << interest10
user11.interests << interest10
user12.interests << interest6
user13.interests << interest8
