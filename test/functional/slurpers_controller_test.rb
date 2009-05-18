require 'test_helper'

class SlurpersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slurpers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slurper" do
    assert_difference('Slurper.count') do
      post :create, :slurper => { }
    end

    assert_redirected_to slurper_path(assigns(:slurper))
  end

  test "should show slurper" do
    get :show, :id => slurpers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => slurpers(:one).to_param
    assert_response :success
  end

  test "should update slurper" do
    put :update, :id => slurpers(:one).to_param, :slurper => { }
    assert_redirected_to slurper_path(assigns(:slurper))
  end

  test "should destroy slurper" do
    assert_difference('Slurper.count', -1) do
      delete :destroy, :id => slurpers(:one).to_param
    end

    assert_redirected_to slurpers_path
  end
end
