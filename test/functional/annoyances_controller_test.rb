require 'test_helper'

class AnnoyancesControllerTest < ActionController::TestCase
  setup do
    @annoyance = annoyances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annoyances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annoyance" do
    assert_difference('Annoyance.count') do
      post :create, annoyance: @annoyance.attributes
    end

    assert_redirected_to annoyance_path(assigns(:annoyance))
  end

  test "should show annoyance" do
    get :show, id: @annoyance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annoyance.to_param
    assert_response :success
  end

  test "should update annoyance" do
    put :update, id: @annoyance.to_param, annoyance: @annoyance.attributes
    assert_redirected_to annoyance_path(assigns(:annoyance))
  end

  test "should destroy annoyance" do
    assert_difference('Annoyance.count', -1) do
      delete :destroy, id: @annoyance.to_param
    end

    assert_redirected_to annoyances_path
  end
end
