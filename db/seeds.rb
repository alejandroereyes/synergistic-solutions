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
      course = location.courses.create(title: Faker::Company.catch_phrase,
                                  start_date: Faker::Date.between(2.years.ago, Date.today),
                              max_enrollment: Array(20..100).sample)

      4.times do
        person = company.employees.create(name: Faker::Name.first_name,
                                     hire_date: Faker::Date.between(10.years.ago, Date.today),
                                         title: Faker::Name.title,
                                   location_id: location.id)

        EmployeeCourse.create(employee_id: person.id, course_id: course.id)
      end
    end
  end
end
