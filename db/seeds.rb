# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding ..."
project_types =
  ProjectType.create(
    [
      { name: "Machine Learning", description: "Predictions" },
      {
        name: "Web: Development",
        description: "Frontend and backend web development"
      }
    ]
  )

experiences =
  Experience.create(
    [
      {
        role_id: 1,
        title: "Machine learning engineer",
        location: "Nairobi",
        company_name: "Neural Labs",
        company_link: "neural labs link",
        company_link_image: "neural link logo",
        start_date: "01/01/2022",
        end_date: "01/12/2022"
      },
      {
        role_id: 2,
        title: "Backend engineer",
        location: "Nairobi",
        company_name: "Apt Learner",
        company_link: "apt learner link",
        company_link_image: "apt learner logo",
        start_date: "01/01/2022",
        end_date: "01/12/2022"
      }
    ]
  )

roles =
  Role.create do
    [
      {
        name: "Full time",
        description: "Worked for eight hours per day or more."
      },
      {
        name: "Part time",
        description: "Worked for a maximum of 5 hours per day"
      },
    ]
  end
puts "Seeding done!!!!!"
