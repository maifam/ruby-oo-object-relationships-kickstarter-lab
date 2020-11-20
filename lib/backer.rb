class Backer 

    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects 
        set = ProjectBacker.all.select { |proj| proj.backer == self }
        set.map { |proj| proj.project }
    end 

    
end 