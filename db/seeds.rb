# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create ([
    { name: 'Avi', image_url: 'https://randomuser.me/api/port' },
    { name: 'Jane Doe', image_url: 'https://randomuser.me/api/port' },
    { name: 'Yubi', image_url: 'https://randomuser.me/api/port' },
    { name: 'Jane Smith', image_url: 'https://randomuser.me/api/port' },
    { name: 'Avishka', image_url: 'https://randomuser.me/api/port' },
    { name: 'O', image_url: 'https://randomuser.me/api/port' },
    { name: 'Moon', image_url: 'https://randomuser.me/api/port' },
    { name: 'Sun', image_url: 'https://randomuser.me/api/port' },
    { name: 'Ritika Jawa', image_url: 'https://randomuser.me/api/port' },
    { name: 'Armaan Jain', image_url: 'https://randomuser.me/api/port' },
])

articles = Article.create ([
    { title: 'First Article', description: 'This is the first article', user: users[0], shared: [] },
    { title: 'Second Article', description: 'This is the second article', user: users[1], shared: [] },
    { title: 'Third Article', description: 'This is the third article', user: users[2], shared: [] },
    { title: 'Fourth Article', description: 'This is the fourth article', user: users[3], shared: [] },
    { title: 'Fifth Article', description: 'This is the fifth article', user: users[4], shared: [] },
    { title: 'sixth Article', description: 'This is the sixth article', user: users[5], shared: [] },
    { title: 'seventh Article', description: 'This is the seventh article', user: users[6], shared: [] },
    { title: 'eighth Article', description: 'This is the eighth article', user: users[7], shared: [] },
    { title: 'ninth Article', description: 'This is the ninth article', user: users[8], shared: [] },
    { title: 'tenth Article', description: 'This is the tenth article', user: users[9], shared: [] },
])