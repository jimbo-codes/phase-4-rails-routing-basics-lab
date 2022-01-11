class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        # byebug
        list = Student.order(grade: :desc)
        render json: list
    end

    def highest_grade
        byebug
        list = Student.order(grade: :desc)
        top = list.first
        render json: top
    end
end
