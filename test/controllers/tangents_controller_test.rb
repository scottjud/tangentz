require 'test_helper'

class TangentsControllerTest < ActionController::TestCase
  setup do
    @tangent = tangents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tangents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tangent" do
    assert_difference('Tangent.count') do
      post :create, tangent: { description: @tangent.description, name: @tangent.name }
    end

    assert_redirected_to tangent_path(assigns(:tangent))
  end

  test "should show tangent" do
    get :show, id: @tangent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tangent
    assert_response :success
  end

  test "should update tangent" do
    patch :update, id: @tangent, tangent: { description: @tangent.description, name: @tangent.name }
    assert_redirected_to tangent_path(assigns(:tangent))
  end

  test "should destroy tangent" do
    assert_difference('Tangent.count', -1) do
      delete :destroy, id: @tangent
    end

    assert_redirected_to tangents_path
  end
end
