jenn = User.create(name: "Jenn", username: "jennreads", password: "pw", bio: "I love nonfiction.")

alison = User.create(name: "Alison", username: "alithewordsmith", password: "pw", bio: "I am currently reading about antiracism.")

amy = User.create(name: "Amy", username: "iamamy", password: "pw", bio: "Reading 100 books this year.")


race = Book.create(author: "Ijeoma Oluo", title: "So You Want to Talk About Race", image_url: "https://m.media-amazon.com/images/I/41tObHXwHoL.jpg")

antiracist = Book.create(author: "Ibram X. Kendi", title: "How to Be an Antiracist", image_url: "https://m.media-amazon.com/images/I/51W5SGVOqGL.jpg")

testaments = Book.create(author: "Margaret Atwood", title: "The Testaments: The Sequel to The Handmaid's Tale", image_url: "https://m.media-amazon.com/images/I/419TWZk7luL.jpg")

marriage = Book.create(author: "Tayari Jones", title: "An American Marriage", image_url: "https://m.media-amazon.com/images/I/51ITnYRaSPL.jpg")

white = Book.create(author: "Robin J. DiAngelo", title: "White Fragility: Why It's So Hard for White People to Talk About Racism", image_url: "https://m.media-amazon.com/images/I/51aDh-YMFAL.jpg")

nine = Book.create(author: "Liane Moriarty", title: "Nine Perfect Strangers", image_url: "https://m.media-amazon.com/images/I/41MJ9wIkl4L.jpg")

Like.create(user_id: alison.id, book_id: race.id, read: 0)
Like.create(user_id: alison.id, book_id: antiracist.id, read: 1)
Like.create(user_id: alison.id, book_id: white.id, read: 1)
Like.create(user_id: amy.id, book_id: nine.id, read: 1)
Like.create(user_id: amy.id, book_id: testaments.id, read: 1)
Like.create(user_id: jenn.id, book_id: antiracist.id, read: 1)
Like.create(user_id: jenn.id, book_id: testaments.id, read: 0)
Like.create(user_id: jenn.id, book_id: marriage.id, read: 0)