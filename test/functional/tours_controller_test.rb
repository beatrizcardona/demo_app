require 'test_helper'

class ToursControllerTest < ActionController::TestCase
  setup do
    @tour = tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour" do
    assert_difference('Tour.count') do
      post :create, tour: { activity_id: @tour.activity_id, available_from: @tour.available_from, available_to: @tour.available_to, descripcion: @tour.descripcion, difficulty_level: @tour.difficulty_level, duration: @tour.duration, equipement_required: @tour.equipement_required, max_capacity: @tour.max_capacity, meeting_point: @tour.meeting_point, min_capacity: @tour.min_capacity, starting_time: @tour.starting_time, title: @tour.title, user_id: @tour.user_id }
    end

    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should show tour" do
    get :show, id: @tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour
    assert_response :success
  end

  test "should update tour" do
    put :update, id: @tour, tour: { activity_id: @tour.activity_id, available_from: @tour.available_from, available_to: @tour.available_to, descripcion: @tour.descripcion, difficulty_level: @tour.difficulty_level, duration: @tour.duration, equipement_required: @tour.equipement_required, max_capacity: @tour.max_capacity, meeting_point: @tour.meeting_point, min_capacity: @tour.min_capacity, starting_time: @tour.starting_time, title: @tour.title, user_id: @tour.user_id }
    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should destroy tour" do
    assert_difference('Tour.count', -1) do
      delete :destroy, id: @tour
    end

    assert_redirected_to tours_path
  end
end
