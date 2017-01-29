# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

@club = Club.find("c2")
@club.destroy
