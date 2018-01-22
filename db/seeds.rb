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
   picture: "https://s3.amazonaws.com/donorpool/charities/SPLCbanner.jpg",
   icon: "https://s3.amazonaws.com/donorpool/charities/SPLCicon.jpg",
   mission: "The Southern Poverty Law Center is dedicated to fighting hate and bigotry and to seeking justice for the most vulnerable members of our society. Using litigation, education, and other forms of advocacy, the SPLC works toward the day when the ideals of equal justice and equal opportunity will be a reality.")

Charity.create(name:"Doctors Without Borders, USA",
   tagline: "Providing emergency medical care",
   URL: "http://www.doctorswithoutborders.org/",
   category: "International",
   cause: "Development and Relief Services",
   picture: "https://s3.amazonaws.com/donorpool/charities/doctorswithoutbordersbanner.jpg",
   icon: "https://s3.amazonaws.com/donorpool/charities/doctorswithoutbordersicon.jpg",
   mission: "Doctors Without Borders, USA (DWB-USA) was founded in 1990 in New York City to raise funds, create awareness, recruit field staff, and advocate with the United Nations and US government on humanitarian concerns. Doctors Without Borders/Médecins Sans Frontières (MSF) is an international medical humanitarian organization that provides aid in nearly 60 countries to people whose survival is threatened by violence, neglect, or catastrophe, primarily due to armed conflict, epidemics, malnutrition, exclusion from health care, or natural disasters.")

Charity.create(name:"Life After Hate",
   tagline: "Working with individuals who wish to leave a life of hate",
   URL: "https://www.lifeafterhate.org/",
   category: "Intergroup, Race Relations",
   cause: "	Civil Rights, Social Action, Advocacy",
   picture: "https://s3.amazonaws.com/donorpool/charities/Lifeafterhatebanner.png",
   icon: "https://s3.amazonaws.com/donorpool/charities/LifeAfterHateIcon.png",
   mission: "Life After Hate, Inc., a 501(c)(3) U.S. nonprofit, was created in 2011 by former members of the American violent far-right extremist movement. Through powerful stories of transformation and unique insight gleaned from decades of experience, we serve to inspire, educate, guide, and counsel. Whether working with individuals who wish to leave a life of hate and violence or helping organizations (community, educational, civic, government, etc.) grappling with the causes of intolerance and racism, Life After Hate works to counter the seeds of hate we once planted. Through personal experience and highly unique skill sets, we have developed a sophisticated understanding about what draws individuals to extremist groups and, equally important, why they leave. Compassion is the opposite of judgment and we understand the roles compassion and empathy play in healing individuals and communities.")

Charity.create(name:"Sylvia Rivera Law Project",
   tagline: "Guarantee self-determination of gender identity",
   URL: "https://srlp.org",
   category: "Legal Services",
   cause: "Crime, Legal-Related",
   picture: "https://s3.amazonaws.com/donorpool/charities/SRLPBanner.jpg",
   icon: "https://s3.amazonaws.com/donorpool/charities/srlpicon.png",
   mission: "The Sylvia Rivera Law Project (SRLP) works to guarantee that all people are free to self-determine their gender identity and expression, regardless of income or race, and without facing harassment, discrimination, or violence. SRLP is a collective organization founded on the understanding that gender self-determination is inextricably intertwined with racial, social and economic justice. Therefore, we seek to increase the political voice and visibility of low-income people and people of color who are transgender, intersex, or gender non-conforming. SRLP works to improve access to respectful and affirming social, health, and legal services for our communities. We believe that in order to create meaningful political participation and leadership, we must have access to basic means of survival and safety from violence.")

Charity.create(name:"Food Not Bombs",
   tagline: "Recover and share food that would be wasted",
   URL: "http://foodnotbombs.net/",
   category: "Food Banks, Food Pantries",
   cause: "Food, Agriculture and Nutrition",
   picture: "https://s3.amazonaws.com/donorpool/charities/foodnotbombsbanner.png",
   icon: "https://s3.amazonaws.com/donorpool/charities/foodnotbombsicon.png",
   mission: "We recover food that would have been discarded and share it as a way of protesting war and poverty. With fifty cents of every U.S. federal tax dollar going to the military and forty percent of our food being discarded while so many people were struggling to feed their families that we could inspire the public to press for military spending to be redirected to human needs. We also reduce food waste and meet the direct need of our community by collecting discarded food, preparing vegan meals that we share with the hungry while providing literature about the need to change our society. Food Not Bombs also provides food to protesters and striking workers and organizes food relief after natural and political crisis.")

Charity.create(name:"Make the Road New York",
   tagline: "Promoting economic justice, equity and opportunity for all New Yorkers",
   URL: "http://www.maketheroad.org/",
   category: "Human and Civil Rights",
   cause: "Advocacy and Education",
   picture: "https://s3.amazonaws.com/donorpool/charities/maketheroadbanner.jpg",
   icon: "https://s3.amazonaws.com/donorpool/charities/maketheroadicon.jpg",
   mission: "Make the Road New York promotes economic justice, equity and opportunity for all New Yorkers through community and electoral organizing, strategic policy advocacy, leadership development, youth and adult education, and high quality legal and support services. Created in 2007 by the coming together of Make the Road by Walking and the Latin American Integration Center, Make the Road New York is an effort to build power for New York City's low-income and immigrant majority. Make the Road by Walking was founded in 1997 in a Bushwick church basement by local residents to address the potentially devastating effects of welfare reform on America's poor and immigrant communities.")

Update.create(charity_id: 1,
   title: "Update on the thing!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://s3.amazonaws.com/donorpool/charities/SPLCbanner.jpg")

Update.create(charity_id: 2,
     title: "Victory in Lorem Ipsum!",
     content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
     picture: "https://s3.amazonaws.com/donorpool/charities/doctorswithoutbordersbanner.jpg")

Update.create(charity_id: 3,
   title: "Thing Update!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://s3.amazonaws.com/donorpool/charities/Lifeafterhatebanner.png")

Update.create(charity_id: 4,
   title: "The Ipsums are Officially Lorem!",
   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
   picture: "https://s3.amazonaws.com/donorpool/charities/SRLPBanner.jpg")

Update.create(charity_id: 5,
     title: "Update on a different!",
     content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
     picture: "https://s3.amazonaws.com/donorpool/charities/foodnotbombsbanner.png")

Update.create(charity_id: 6,
       title: "Some Stuff Happened!",
       content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac.",
       picture: "https://s3.amazonaws.com/donorpool/charities/maketheroadbanner.jpg")

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
   Support.create(user_id: 2, charity_id: 4, donation: 10)
   Support.create(user_id: 2, charity_id: 5, donation: 1)
   Support.create(user_id: 3, charity_id: 6, donation: 1)
   Support.create(user_id: 3, charity_id: 1, donation: 4)
   Support.create(user_id: 4, charity_id: 2, donation: 50)
   Support.create(user_id: 4, charity_id: 3, donation: 2)
   Support.create(user_id: 5, charity_id: 4, donation: 1)
   Support.create(user_id: 5, charity_id: 5, donation: 20)
