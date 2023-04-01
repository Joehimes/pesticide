class RecordsController < ApplicationController
    before_action :authenticate_user!

    def index
        @records = Record.all
    end

    def new
        @record = Record.new
        @chemicals = Chemical.all
        @record.record_chemicals.build
    end

    def create
        @record = current_user.records.build(record_params)
        @chemicals = Chemical.all
        @record.record_chemicals.build(chemical: params[:chemicals])
        # record_chemical = RecordChemical.new(chemical: record_chemical)
        # @record.record_chemicals << record_chemical
        # puts record_chemical
        if @record.save
            flash[:notice] = "Record created successfully!"
            redirect_to @record
        else
            flash.now[:alert] = "There was a problem with your record."
            render :new
        end
    end

    def show
        @record = Record.find(params[:id])
        @record_chemicals = @record.record_chemicals.all.where(record_id: @record.id)
    end

    private

        def record_params
            params.require(:record).permit(:date, :location, :location_type, :location_size, :chem_amount, :equipment, :start_time, :stop_time, :wind_direction, :wind_velocity, :temperature, chemical: [:id, :name])
        end

end
