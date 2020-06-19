class Project

    @@all = []

    attr_reader :backers, :title

    def initialize(title)
        @title = title
        @backers = [] 
        @@all << self
    end

    def add_backer(backer)
        me = self
        @backers << backer
        backer.update_projects(me) 
    end

    def update_backers(backer)
        @backers << backer
    end
end