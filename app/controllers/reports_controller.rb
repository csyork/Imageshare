class ReportsController < ApplicationController
    
    def create
        @photo = Photo.find(params[:photo_id])
        @report = @photo.reports.create(report_params)
        redirect_to photo_path(@photo)
    end
    
    private
        def report_params
            params.require(:report).permit(:reporter, :body)
        end
end
