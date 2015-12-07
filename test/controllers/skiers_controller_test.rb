require 'test_helper'

class SkiersControllerTest < ActionController::TestCase
  setup do
    @skier = skiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skier" do
    assert_difference('Skier.count') do
      post :create, skier: { discipline: @skier.discipline, name: @skier.name }
    end

    assert_redirected_to skier_path(assigns(:skier))
  end

  test "should show skier" do
    get :show, id: @skier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skier
    assert_response :success
  end

  test "should update skier" do
    patch :update, id: @skier, skier: { discipline: @skier.discipline, name: @skier.name }
    assert_redirected_to skier_path(assigns(:skier))
  end

  test "should destroy skier" do
    assert_difference('Skier.count', -1) do
      delete :destroy, id: @skier
    end

    assert_redirected_to skiers_path
  end
end
