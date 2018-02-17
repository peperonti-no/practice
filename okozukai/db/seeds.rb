# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(category_name: '書籍')
Category.create(category_name: 'お菓子')
Category.create(category_name: '趣味')

Payment.create(payment_date: Time.now, category_id: 1, amount_of_money: 108, memo: '手帳')
Payment.create(payment_date: Time.now, category_id: 2, amount_of_money: 10, memo: 'うまい棒コーンポタージュ味')
Payment.create(payment_date: Time.now, category_id: 3, amount_of_money: 500, memo: '温泉')
