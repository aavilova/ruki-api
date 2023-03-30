puts "Start"
Theme.destroy_all
themes = Theme.create([
    {
        "name": "Знакомство",
    },
    {
        "name": "Приветствие",
    },
    {
        "name": "Как вас зовут?",
    },
    {
        "name": "Доброго дня",
    },
    {
        "name": "Сходим пообедать?",
    },
    {
        "name": "Спокойной ночи",
    },
    {
        "name": "Я люблю рисовать",
    }
]),

User.destroy_all
users = User.create([
    {
        "email": "aalisa@gmail.com",
        "password": "123456",
    },
    {
        "email": "aavilova.com",
        "password": "123456",
    }
])

puts "End"