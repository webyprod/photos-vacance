require 'test_helper'

class SejoursControllerTest < ActionController::TestCase
  setup do
    @sejour = sejours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sejours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sejour" do
    assert_difference('Sejour.count') do
      post :create, sejour: { description: @sejour.description, lieu: @sejour.lieu, note: @sejour.note, recommandation: @sejour.recommandation }
    end

    assert_redirected_to sejour_path(assigns(:sejour))
  end

  test "should show sejour" do
    get :show, id: @sejour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sejour
    assert_response :success
  end

  test "should update sejour" do
    patch :update, id: @sejour, sejour: { description: @sejour.description, lieu: @sejour.lieu, note: @sejour.note, recommandation: @sejour.recommandation }
    assert_redirected_to sejour_path(assigns(:sejour))
  end

  test "should destroy sejour" do
    assert_difference('Sejour.count', -1) do
      delete :destroy, id: @sejour
    end

    assert_redirected_to sejours_path
  end
end
