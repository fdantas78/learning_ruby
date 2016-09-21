require 'pp'
require_relative 'user'

user = User.new 'fernando@dantas.me', 'Fernando'
user2 = User.new 'fernando2@dantas.me', 'Fernando2'

pp user
pp user2

user.save
user2.save