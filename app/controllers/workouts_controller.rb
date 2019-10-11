class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show, :edit, :update, :destroy]
    def index
        @workouts = Workout.all 
    end

    def show
    end 

    def new 
        @workout = Workout.new
    end 

    def create 
        @workout = Workout.new
        @workout.date = params[:date]
        @workout.training = params[:training]
        @workout.mood = params[:mood]
        @workout.length = params[:length]
        @workout.save
        redirect_to workout_path(@workout)
    end 

    def edit
    end
    
    def update
    end 

    def destroy 
    end 


    private 

    def workout_params
        params.permit(:date, :training, :mood, :length) 
    end 

    def find_workout
        @workout = Workout.find(params[:id])
    end 
end
