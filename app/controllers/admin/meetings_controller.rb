class Admin::MeetingsController < Admin::AdminController
    def index
        @meetings = Meeting.all
    end

    def edit
        @meeting = Meeting.find(params[:id])
    end

    def show
        @meeting = Meeting.find(params[:id])
    end

    def update
        @meeting = Meeting.find(params[:id])
        @meeting.update meeting_params
        redirect_to admin_meetings_path
    end

    def create
        @meeting = Meeting.new(meeting_params)

        @meeting.save
        redirect_to admin_meetings_path
    end

    def delete
    end

    def destroy
        Meeting.find(params[:id]).destroy
        redirect_to admin_meetings_path
    end

    def new
    end

    private
        def meeting_params
            params.require(:meeting).permit(:name, :start_time, :location)
        end
end

