module Api::V1
  class WorkoutsController < ApplicationController
    def create
      workout = Workout.create(workout_params)
      render json: workout
    end

    def index
      @workouts = Workout.all
      render json: @workouts
    end
  end
end