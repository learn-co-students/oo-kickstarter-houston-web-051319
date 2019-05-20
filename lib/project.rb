class Project

    attr_reader :backers, :title

    def initialize(title)
        @backers = []
        @title = title
        

        def add_backer(backer)
            @backers << backer

            backer.backed_projects << self

        end


    end

end