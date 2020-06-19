class Backer
    
    attr_reader :backed_projects, :name

    def initialize(name)
        @backed_projects = []
        @name = name
          

        def back_project(project)
            
            @backed_projects << project

            project.backers << self

        end

    end
end