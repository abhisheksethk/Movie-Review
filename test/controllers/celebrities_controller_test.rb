require 'test_helper'

class CelebritiesControllerTest < ActionController::TestCase
  setup do
    @celebrity = celebrities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:celebrities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create celebrity" do
    assert_difference('Celebrity.count') do
      post :create, celebrity: { age: @celebrity.age, name: @celebrity.name, twiiter_link: @celebrity.twiiter_link }
    end

    assert_redirected_to celebrity_path(assigns(:celebrity))
  end

  test "should show celebrity" do
    get :show, id: @celebrity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @celebrity
    assert_response :success
  end

  test "should update celebrity" do
    patch :update, id: @celebrity, celebrity: { age: @celebrity.age, name: @celebrity.name, twiiter_link: @celebrity.twiiter_link }
    assert_redirected_to celebrity_path(assigns(:celebrity))
  end

  test "should destroy celebrity" do
    assert_difference('Celebrity.count', -1) do
      delete :destroy, id: @celebrity
    end

    assert_redirected_to celebrities_path
  end
end
