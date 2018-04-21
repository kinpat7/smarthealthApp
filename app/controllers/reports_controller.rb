class ReportsController < ApplicationController

    def generate
    end

    def display
        @from = params['from']
        @to = params['to']
        @clinicid = params['clinic']
        @displayresult = Checkup.where(date: (@from..@to), clinic_id: @clinicid)
    end
end
