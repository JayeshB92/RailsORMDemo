# @user = User.create(user_id: "u1", name: "Osho")
# @account = @user.accounts.create(account_id: "ua1", amount: "1000.01")
# @account = @user.accounts.create(account_id: "ua2", amount: "1000.02")

# @user = User.find("u1")
# @user.destroy

# @account = User.find("u1").accounts.find("ua2")
# @account.destroy

# @club = Club.create(club_id: "c1", club_name: "Club One")
# @club.users << @user
#
# @club = Club.create(club_id: "c2", club_name: "Club Two")
# @user.clubs << @club

# @club = Club.find("c2")
# @club.destroy

# @user = User.new(user_id: "eu2", name: "Jay")
# @employee = @user.build_employee(designation: "Developer", salary: 20000.0)
# @user.save

# @employee = Employee.new(designation: "Developer", salary: 20000.0)
# @user = @employee.build_user(user_id: "eu3", name: "Osho")
# @employee.save

# @user = User.new(user_id: "cu1", name: "Mayur")
# @customer = @user.build_customer(contact_number: 8888888888)
# @user.save

# @customer = Customer.new(contact_number: 9999998888)
# @user = @customer.build_user(user_id: "cu2", name: "Meet")
# @customer.save

# @employee = Employee.find("eu3")
# @employee.pictures << Picture.new(picture_id: "p1", picture_name: "employee_3_profile.jpg")

@customer = Customer.find("cu2")
@customer.pictures << Picture.new(picture_id: "p2", picture_name: "customer_2_profile.jpg")
