# Employee Reimbursement Portal

A Ruby on Rails application that allows employees to submit reimbursement bills and admins to approve or reject them.

## 🧰 Tech Stack
- Ruby on Rails (MVC)
- HTML, CSS, JavaScript, jQuery
- SQLite3 (Development DB)
- Bootstrap 5 for UI

## 🚀 Features
- Authentication (Admin & Employee)
- Employee management (Admin only)
- Bill submission and approval system
- Role-based access control

## ⚙️ Setup Instructions
```bash
git clone git@github.com:vini2407/employee-reimbursement-portal.git
cd employee-reimbursement-portal
bundle install
rails db:create db:migrate db:seed
rails s
