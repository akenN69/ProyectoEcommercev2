# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.destroy_all
Order.destroy_all
User.destroy_all
Product.destroy_all
AdminUser.create!(email: 'seba.rada@gmail.com', password: '123456', password_confirmation: '123456') if Rails.env.development?
9.times do |i|
    articles = ["Carteras", "Fundas", "Estatuas", "Separador", "Cajas", "Copas", "Telefono", "Porta Velas", "Almohada"]
    Product.create(
        name: "#{articles[i]}",
        photo: "#{i+1}.jpeg",
        unit_price: 2500
        )
end

