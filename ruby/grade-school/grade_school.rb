class School

    def initialize
        @roster = Hash.new { |hash, key| hash[key] = [] }
    end

    def add(student, grade)
        @roster[grade].push(student) 
    end

    def students(grade)
        @roster[grade].sort
    end

    def students_by_grade
       @roster.map { |k, v| Hash["grade": k, "students": v.sort] }.sort_by { |k| k[:grade] } 
    end

end

module BookKeeping; VERSION = 3; end