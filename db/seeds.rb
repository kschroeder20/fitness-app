# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserWorkout.destroy_all
ExerciseWorkout.destroy_all
Workout.destroy_all
Exercise.destroy_all

Workout.create!([{ title: 'Workout Title 1', description: 'Workout Description 1' }, { title: 'Workout Title 2', description: 'Workout Description 2' }, { title: 'Workout Title 3', description: 'Workout Description 3' }, { title: 'Workout Title 4', description: 'Workout Description 4' }, { title: 'Workout Title 5', description: 'Workout Description 5' }])

UserWorkout.create(workout_id: 1, user_id: 1)
UserWorkout.create(workout_id: 2, user_id: 1)
UserWorkout.create(workout_id: 3, user_id: 1)
UserWorkout.create(workout_id: 4, user_id: 1)
UserWorkout.create(workout_id: 5, user_id: 1)

Exercise.create!([{ title: 'Exercise Title 1', description: 'Exercise Description 1', repetitions: '10', sets: '10', example_url: 'www.espn.com' }, { title: 'Exercise Title 2', description: 'Exercise Description 2', repetitions: '10', sets: '10', example_url: 'www.espn.com' }, { title: 'Exercise Title 3', description: 'Exercise Description 3', repetitions: '10', sets: '10', example_url: 'www.espn.com' }, { title: 'Exercise Title 4', description: 'Exercise Description 4', repetitions: '10', sets: '10', example_url: 'www.espn.com' }, { title: 'Exercise Title 5', description: 'Exercise Description 5', repetitions: '10', sets: '10', example_url: 'www.espn.com' }])

ExerciseWorkout.create(exercise_id: 1, workout_id: 1)
ExerciseWorkout.create(exercise_id: 2, workout_id: 1)
ExerciseWorkout.create(exercise_id: 3, workout_id: 1)
ExerciseWorkout.create(exercise_id: 4, workout_id: 1)
ExerciseWorkout.create(exercise_id: 5, workout_id: 1)
