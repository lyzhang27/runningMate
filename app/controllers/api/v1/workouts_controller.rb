module Api::V1
  class WorkoutsController < ApplicationController
    def create
      workout = Workout.create(workout_params)
      render json: workout
    end

    def index
      @workouts = Workout.order("created_at DESC")
      render json: @workouts
    end

    def update
      @workout = Workout.find(params[:id])
      @workout.update_attributes(workout_params)
      render json: @workouts
    end

    def destroy
      @workout = Workout.find(params[:id])
      if @workout.destroy
        head :no_content, status: :ok
      else
        render json: @workout.errors, status: :unprocessable_entity
      end
    end

    private

    def workout_params
      params.require(:workout).permit(:date, :activity, :distance, :duration, :completed, :user_id)
    end
  end
end