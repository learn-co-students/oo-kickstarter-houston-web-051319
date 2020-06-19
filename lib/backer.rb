#require "./project.rb"
class Backer 
    attr_reader :backed_projects, :name
    def initialize(name)
        @backed_projects = [] 
        @name = name
    end 

    def back_project(proj)
        @backed_projects << proj
        proj.backers << self  
    end 
    
end 


bob = Backer.new("Bob")

