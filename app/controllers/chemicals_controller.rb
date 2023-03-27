class ChemicalsController < ApplicationController

    def index
        @chemicals = Chemical.all
    end

    def new
        @chemical = Chemical.new
    end

    def create
        @chemical = Chemical.new(chemical_params)
        if @chemical.save
            flash[:notice] = "Chemical created successfully."
            redirect_to chemicals_path
        else
            flash.now[:alert] = "There was a problem with your form."
            render :new
        end
    end

    def edit
        @chemical = Chemical.find(params[:id])
    end

    def update
        @chemical = Chemical.find(params[:id])
        if @chemical.update(chemical_params)
            flash[:notice] = "Chemical updated successfully."
            redirect_to @chemical
        else
            flash.now[:alert] = "There was a problem with your update."
            render :edit
        end
    end

    def show
        @chemical = Chemical.find(params[:id])
    end

    def destroy
        @chemical = Chemical.find(params[:id])
        @chemical.destroy
    end

    private

        def chemical_params
            params.require(:chemical).permit(:name, :epa, :pesticide_type, :company, :amount, :unit)
        end

end
