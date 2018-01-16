# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Charity.create(name:"Southern Poverty Law Center",
   tagline: "Advocating for justice and equality",
   URL: "https://www.splcenter.org/",
   category: "Human and Civil Rights",
   cause: "Advocacy and Education",
    picture: "https://i.imgur.com/fQnA7uZ.jpg",
     icon: "https://i.imgur.com/qkvkqL9.jpg")

Charity.create(name:"Doctors Without Borders, USA",
   tagline: "Providing emergency medical care",
   URL: "http://www.doctorswithoutborders.org/",
   category: "International",
   cause: "Development and Relief Services  ",
    picture: "https://i.imgur.com/sAFHTY4.jpg",
     icon: "https://i.imgur.com/rSbZCbg.jpg")

Charity.create(name:"Life After Hate",
   tagline: "Advocating for justice and equality",
   URL: "https://www.lifeafterhate.org/",
   category: "Intergroup, Race Relations",
   cause: "	Civil Rights, Social Action, Advocacy",
    picture: "https://i.imgur.com/fQnA7uZ.jpg",
     icon: "https://i.imgur.com/T6N6SGz.png")

Update.create(charity_id: 1,
   title: "Update on the thing!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://i.imgur.com/fQnA7uZ.jpg")

Update.create(charity_id: 1,
   title: "Update on the thing!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://i.imgur.com/fQnA7uZ.jpg")

Update.create(charity_id: 2,
   title: "Update on a different!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://i.imgur.com/sAFHTY4.jpg")

Update.create(charity_id: 3,
   title: "Thing Update!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://i.imgur.com/cS9PutB.png")

Update.create(charity_id: 2,
   title: "Victory in Lorem Ipsum!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://i.imgur.com/sAFHTY4.jpg")

Update.create(charity_id: 3,
   title: "The Ipsums are Officially Lorem!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://i.imgur.com/cS9PutB.png")

User.create(first_name: "Lin-Manuel",
   last_name: "Miranda",
   picture: "https://i.imgur.com/AKBejBB.jpg",
   user_name: "Lin",
   email: "Lin@aol.com",
   password: "123",
   featured: true)

User.create(first_name: "Barack",
   last_name: "Obama",
   picture: "https://i.imgur.com/4ZmfTGq.jpg",
   user_name: "B-boyObamamama",
   email: "potus44@aol.com",
   password: "123",
   featured: true)

User.create(first_name: "Eve",
   last_name: "Ewing",
   picture: "https://i.imgur.com/4PoxyxH.jpg",
   user_name: "Wikipedia Brown",
   email: "Heyeve@aol.com",
   password: "123",
   featured: true)

User.create(first_name: "Shaun",
   last_name: "King",
   picture: "https://i.imgur.com/IivxQzU.jpg",
   user_name: "Shauntonamo",
   email: "Shaun@aol.com",
   password: "123",
   featured: true)

User.create(first_name: "Dick",
   last_name: "Ward",
   picture: "https://i.imgur.com/HepYBDL.jpg",
   user_name: "Gonzodamus",
   email: "dickward@aol.com",
   password: "123",
   featured: false)

   Support.create(user_id: 1, charity_id: 1, donation: 5)
   Support.create(user_id: 1, charity_id: 2, donation: 2)
   Support.create(user_id: 1, charity_id: 3, donation: 4)
   Support.create(user_id: 2, charity_id: 1, donation: 10)
   Support.create(user_id: 2, charity_id: 2, donation: 1)
   Support.create(user_id: 3, charity_id: 3, donation: 1)
   Support.create(user_id: 3, charity_id: 1, donation: 4)
   Support.create(user_id: 4, charity_id: 2, donation: 50)
   Support.create(user_id: 4, charity_id: 3, donation: 2)
   Support.create(user_id: 5, charity_id: 2, donation: 1)
   Support.create(user_id: 5, charity_id: 1, donation: 20)
