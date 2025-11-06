# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
Bill.destroy_all
Employee.destroy_all
Department.destroy_all
User.destroy_all

sales = Department.create!(name: "Sales")
engineering = Department.create!(name: "Engineering")
hr = Department.create!(name: "HR")

admin_user = User.create!(
  name: "Admin User",
  email: "admin@portal.com",
  password: "password",
  role: :admin
)

emp_user1 = User.create!(
  name: "John Doe",
  email: "john@portal.com",
  password: "password",
  role: :employee
)

emp_user2 = User.create!(
  name: "Andrew Smith",
  email: "andrew@portal.com",
  password: "password",
  role: :employee
)

Employee.create!(
  first_name: "John",
  last_name: "Doe",
  email: "john@portal.com",
  designation: "Sales Executive",
  department: sales,
  user: emp_user1
)

Employee.create!(
  first_name: "Andrew",
  last_name: "Smith",
  email: "andrew@portal.com",
  designation: "Intern",
  department: engineering,
  user: emp_user2
)

Bill.create!(
  amount: 1200.50,
  bill_type: :travel,
  status: :pending,
  submitted_by: emp_user1
)

Bill.create!(
  amount: 500.00,
  bill_type: :food,
  status: :approved,
  submitted_by: emp_user2
)


