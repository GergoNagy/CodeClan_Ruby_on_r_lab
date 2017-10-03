class StudentsController < ApplicationController

    def index
        studets = Student.where ({cohort: params[:cohort_id]})
        render :json => studets.as_json(
            {
                include: 
                {
                    codeclan:
                        # {
                        #     include: {:codeclan}
                        # }
                    {only: :location}
                }
            }
        )
    end
end