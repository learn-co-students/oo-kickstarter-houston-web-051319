require 'pry'
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

class Project
    attr_reader :backers, :title
    def initialize(title)
        @backers = []
        @title = title 
    end 

    def add_backer(backer_instance)
        @backers << backer_instance
        backer_instance.backed_projects << self 
    end 

end 
bob = Backer.new("bob")
proj1 = Project.new("proj1")



 





