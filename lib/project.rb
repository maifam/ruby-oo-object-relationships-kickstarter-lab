class Project 

    attr_reader :title 

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        set = ProjectBacker.all.select { |proj| proj.project == self}
        set.map { |proj| proj.backer }
    end 


end 