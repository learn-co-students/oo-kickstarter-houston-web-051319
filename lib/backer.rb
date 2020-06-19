class Backer

    @@all = []

    attr_reader :backed_projects, :name

    def initialize(name)
        @name = name
        @backed_projects = [] 
        @@all << self
    end

    def back_project(project)
        me = self
        @backed_projects << project
        project.update_backers(me)
    end

    def update_projects(project)
        @backed_projects << project
    end
end