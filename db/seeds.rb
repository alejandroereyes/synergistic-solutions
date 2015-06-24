# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  company = Company.create(name: Faker::Company.name)

  5.times do
    location = company.locations.create(city: Faker::Address.city)

    3.times do
      location.courses.create(title: Faker::Company.catch_phrase,
                         start_date: Faker::Date.forward(100),
                     max_enrollment: Array(20..100).sample)
    end
  end

  10.times do
  company.employees.create(name: Faker::Name.first,
                      hire_date: Faker::Date.between(10.years.ago, Date.today),
                          title: Faker::Name.title)
  end
end
