class Project
    attr_reader :project_title, :backers
    def initialize(project_title)
        @project_title = project_title
        @backers = []
    end
    def add_backer(backer)
        backer.back_project(self)
    end

end
