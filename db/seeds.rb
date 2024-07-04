# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RetailChain.create(name: "Evroopt", headquarters: "Minsk", ceo_full_name: 'Ivanov', website: "https://evroopt.com", contact_email: "evroopt@gmail.com", contact_phone: "67263", industry: "food and consumer goods", founded_date: "2010-01-01")
RetailChain.create(name: "Gippo", headquarters: "Grodno", ceo_full_name: 'Petrov', website: "https://gippo.com", contact_email: "gippo@gmail.com", contact_phone: "45041", industry: "food and consumer goods", founded_date: "2009-05-30")
RetailChain.create(name: "Green", headquarters: "Brest", ceo_full_name: 'Borisov', website: "https://green.com", contact_email: "green@gmail.com", contact_phone: "552930", industry: "food and consumer goods", founded_date: "2013-03-23")

Store.create(address: "пр. Независимости 23, Минск, Минская область 220030, Беларусь", retail_chain_id: 1)
Store.create(address: "ул. Менделеева 1, Минск, Минская область, Беларусь", retail_chain_id: 1)
Store.create(address: "улица Алибегова 13/1, Минск, Минская область 220116, Беларусь", retail_chain_id: 1)

Store.create(address: "Партизанский просп. 150а, Минск, Минская область, Беларусь", retail_chain_id: 2)
Store.create(address: "улица Максима Горецкого 2, Минск, Минская область 220078, Беларусь", retail_chain_id: 2)
Store.create(address: "улица Червякова 57, Минск, Минская область, Беларусь", retail_chain_id: 2)

Store.create(address: "ул. Притыцкого 29, Минск, Минская область, Беларусь", retail_chain_id: 3)
Store.create(address: "ул. Притыцкого 156/1, Минск, Минская область, Беларусь", retail_chain_id: 3)
Store.create(address: "улица Уборевича д. 176, Минск, Минская область, Беларусь", retail_chain_id: 3)