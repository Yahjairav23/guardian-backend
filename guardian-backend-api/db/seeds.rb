# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.destroy_all
Event.destroy_all
User.destroy_all
UserGroup.destroy_all

# USERS
u1 = User.create!(name: "Yari", username: "devinitely.yari", email: "devgirl.yari@gmail.com", age: 27, birthday: "1993-01-13", city: "Washington", state: "District of Columbia", bio: "Ready to be a healping hand!", image: "https://i.picsum.photos/id/445/4256/2819.jpg")
u2 = User.create!(name: "Deij", username: "devdeij", email: "deij@gmail.com", age: 24, birthday: "1996-07-24", city: "Baltimore", state: "Maryland", bio: "Ready to be a healping hand!", image: "https://i.picsum.photos/id/180/2400/1600.jpg")
u3 = User.create!(name: "Chine", username: "dog4lyfe", email: "chine@gmail.com", age: 32, birthday: "1988-08-21", city: "Silver Springs", state: "Maryland", bio: "I haven't helped everyone... YET! But I am working towards it.", image: "https://i.picsum.photos/id/1025/4951/3301.jpg")
u4 = User.create!(name: "Ann", username: "poke.ann", email: "ann@gmail.com", age: 38, birthday: "1982-05-18", city: "Arlington", state: "Virginia", bio: "We can end homelessness", image: "https://i.picsum.photos/id/1062/5092/3395.jpg")
u5 = User.create!(name: "Paul", username: "bookworm", email: "paul@gmail.com", age: 40, birthday: "1980-01-26", city: "Bethesda", state: "Maryland", bio: "Helping people off the streets!", image: "https://i.picsum.photos/id/464/3198/2230.jpg")
u6 = User.create!(name: "Tim", username: "chillin_tim", email: "tim@gmail.com", age: 39, birthday: "1981-09-28", city: "Albany", state: "New York", bio: "Together we can!", image: "https://i.picsum.photos/id/103/2592/1936.jpg")

# GROUPS
group1 = Group.create!(name: 'B-more Angels', city: 'Baltimore', state: 'Maryland', email:'bmoreangels@demo.com', phone:'4102097155', about: 'Focused on serving the Greater Baltimore Area', image: 'https://tinyurl.com/y938gt7o' , creator_id: u1.id)
group2 = Group.create!(name: 'SanFran Helpers', city: 'San Francisco', state: 'California', email:'sfhelpers@demo.com', phone:'4158762155', about: 'Originators of the helping hand Saturdays', image: 'https://tinyurl.com/y73rtk46', creator_id: u3.id)
group3 = Group.create!(name: 'ServeSI', city: 'Staten Island', state: 'New York', email:'serves@demo.com', phone:'7185447155', about: 'Staten Island Needs More Hands', image: 'https://tinyurl.com/y9tw5owt', creator_id: u4.id)
group4 = Group.create!(name: 'Buddies', city: 'Seattle', state: 'Washington', email:'becomeabuddy@demo.com', phone:'2067448383', about: 'Join our Group and Become a Buddy to Those In Need',image: 'https://tinyurl.com/yac4rtkq', creator_id: u5.id)

#EVENTS
event1 = Event.create!(title: "Sunday Funday", description: 'Take a break from service with a group meetup at the Ale House.',city: "San Fracisco", state: "California", street_address: '2200 Old Glen Way', event_date: '2020-05-31',image: 'https://tinyurl.com/yaph9ptd', group_id: group2.id)
event2 = Event.create!(title: "Meals on Wheels Meetup",description: "Meet at El Ray High School for meal prep and delivery. Invite your friends!",city: "Staten Island", state: "New York", street_address: '6540 Cole Street', event_date: '2020-07-02',image: 'https://tinyurl.com/y89fyybj', group_id: group3.id)
event3 = Event.create!(title: "Sandwiches at St. Vincent De Paul",description: "Help make sandwiches for those in need. All are welcome!",city: "Seattle", state: "Washington",street_address: '574 Turnip Road', event_date: '2020-12-17',image: 'https://tinyurl.com/ydbc63ro', group_id: group4.id)
event4 = Event.create!(title: "Run to End Homelessness 5K",description: 'Break a sweat for a great cause! All proceeds go to local Baltimore shelters.',city: "Baltimore", state: 'Maryland',street_address: '4450 Forest Park Ave',event_date: '2020-06-19',image: 'https://tinyurl.com/yc2apu7a', group_id: group1.id )
event5 = Event.create!(title: "May The 4th Help in Costume",description: "Hand out supplies to the homeless in your best Star Wars cosutme. Let's bring smiles to the faces of the unhoused! May the Fourth Be With You!",city: "San Francisco", state: "California", street_address: '540 Chevy Chase Blvd.',event_date: '2021-05-04',image: 'https://tinyurl.com/yasovd8e', group_id: group2.id)
event7 = Event.create!(title: "Movies in The Park",description: "Large screening of 'Mr.Rogers' in the park. Be mindful of the unhoused population. We wan't to bring entertainment to ALL people", city: "Baltimore", state: "Maryland",street_address: '8097 St. James Place',event_date: '2020-07-29',image: 'https://tinyurl.com/yco6ntgz', group_id: group1.id)

# USER_GROUPS
us1 = UserGroup.create!(group_id: group1.id, member_id: u1.id)
us2 = UserGroup.create!(group_id: group2.id, member_id: u2.id)
us3 = UserGroup.create!(group_id: group3.id, member_id: u3.id)
us4 = UserGroup.create!(group_id: group4.id, member_id: u3.id)
us5 = UserGroup.create!(group_id: group1.id, member_id: u3.id)
us6 = UserGroup.create!(group_id: group2.id, member_id: u4.id)
us7 = UserGroup.create!(group_id: group3.id, member_id: u2.id)
us8 = UserGroup.create!(group_id: group4.id, member_id: u6.id)
us5 = UserGroup.create!(group_id: group1.id, member_id: u5.id)
us6 = UserGroup.create!(group_id: group2.id, member_id: u1.id)
us7 = UserGroup.create!(group_id: group3.id, member_id: u5.id)
us8 = UserGroup.create!(group_id: group4.id, member_id: u4.id)
