class StudentsController < ApplicationController

    def index
        studets = Student.where ({cohort: params[:cohort_id]})
        render :json => studets.as_json(
            {
                include: 
                {
                    cohort:
                     
                    {only: :number}
                }
            }
        )
    end
end