class StudentsController < ApplicationController
    def index
        student = Student.all
        render json: student
    end
    def grades
        grades = Student.order(grade: :desc)
        render json: grades
    end
    def highest_grade
       grades = Student.order(grade: :desc).first
       render json: grades

    end

    
end
