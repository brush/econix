require 'test_helper'

class SiftersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sifters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sifter" do
    assert_difference('Sifter.count') do
      post :create, :sifter => { }
    end

    assert_redirected_to sifter_path(assigns(:sifter))
  end

  test "should show sifter" do
    get :show, :id => sifters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sifters(:one).to_param
    assert_response :success
  end

  test "should update sifter" do
    put :update, :id => sifters(:one).to_param, :sifter => { }
    assert_redirected_to sifter_path(assigns(:sifter))
  end

  test "should destroy sifter" do
    assert_difference('Sifter.count', -1) do
      delete :destroy, :id => sifters(:one).to_param
    end

    assert_redirected_to sifters_path
  end
end
