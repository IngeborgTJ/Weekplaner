require 'test_helper'

class WeekplansControllerTest < ActionController::TestCase
  setup do
    @weekplan = weekplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekplan" do
    assert_difference('Weekplan.count') do
      post :create, weekplan: { plan: @weekplan.plan, week: @weekplan.week }
    end

    assert_redirected_to weekplan_path(assigns(:weekplan))
  end

  test "should show weekplan" do
    get :show, id: @weekplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekplan
    assert_response :success
  end

  test "should update weekplan" do
    patch :update, id: @weekplan, weekplan: { plan: @weekplan.plan, week: @weekplan.week }
    assert_redirected_to weekplan_path(assigns(:weekplan))
  end

  test "should destroy weekplan" do
    assert_difference('Weekplan.count', -1) do
      delete :destroy, id: @weekplan
    end

    assert_redirected_to weekplans_path
  end
end
