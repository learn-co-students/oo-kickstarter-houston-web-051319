require_relative './lib/backer.rb'
require_relative './lib/project.rb'
require 'pry'

john = Backer.new("John")
roy = Backer.new("Roy")
bullshit = Project.new("Bullshit")
coolshit = Project.new("Coolshit")

binding.pry
puts "Done"