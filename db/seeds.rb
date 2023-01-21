# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding ............"
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

puts "Seeding done!!!!!"
