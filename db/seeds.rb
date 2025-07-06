User.create!(email: 'admin@example.com', password: 'password', admin: true)
User.create!(email: 'user@example.com', password: 'password', admin: false)

a1 = Author.create!(given_name: 'Max', family_name: 'Mustermann')
a2 = Author.create!(given_name: 'Lisa', family_name: 'Meier')

b1 = Book.create!(title: 'Rails 5', publisher: 'The Pragmatic Bookshelf', year: 2020, edition: 2, isbn: '1-234-56789-0', author: a1)
b2 = Book.create!(title: 'Rails 6', publisher: 'The Pragmatic Bookshelf', year: 2021, edition: 1, isbn: '1-234-56791-1', author: a2)

Copy.create!(book: b1, signature: 'IT-WBA-1', acquired_at: Date.today)
Copy.create!(book: b2, signature: 'IT-WBA-2', acquired_at: Date.today)

puts "Seed abgeschlossen: #{User.count} Users, #{Author.count} Autoren, #{Book.count} Bücher, #{Copy.count} Exemplare"
