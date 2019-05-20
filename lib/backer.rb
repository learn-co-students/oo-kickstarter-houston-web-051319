require 'pry'
class Project
    attr_reader :title, :backers
    def initialize(title)
        @title = title
        @backers = []
    end
    def add_backer(backer)
        backer.back_project(self)
    end

end
class Backer
    attr_reader :name, :backed_projects
    def initialize(name)
        @name = name
        @backed_projects = []
    end
    def back_project(project)
        
        project.backers << self
        @backed_projects << project
    end

end
# project = Project.new("Bullshit")
# john = Backer.new("john")
# sean = Backer.new("sean")
#   john.back_project(project)
#  p john
