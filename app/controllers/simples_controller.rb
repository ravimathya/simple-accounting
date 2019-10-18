class SimplesController < ApplicationController
    def index
        @simples = Simple.all
    end

    def create
        @simple = Simple.create(simple_params)
        if @simple.valid?
            flash[:success] = "Your record has been posted!"
            redirect_to root_path
        else
            flash[:alert] = "There is error in your record."
            redirect_to new_simple_path
        end
        
    end

    def edit
        @simple = Simple.find(params[:id])
    end

    def update
        @simple = Simple.find(params[:id])
        if @simple.update(simple_params)
            flash[:success] = "The idea has been updated!"
            redirect_to root_path
        else
            flash[:alert] = "Woops! Looks like there has been an error!"
            redirect_to edit_simple_path(params[:id])
        end
    end

    def destroy
        @simple = Simple.find(params[:id])
        @simple.destroy
        redirect_to root_path
    end
    def new
    end


    private

    def simple_params
        params.require(:simple).permit(:date, :title, :amount)
    end

end
