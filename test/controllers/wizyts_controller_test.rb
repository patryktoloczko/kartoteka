require 'test_helper'

class WizytsControllerTest < ActionController::TestCase
  setup do
    @wizyt = wizyts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wizyts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wizyt" do
    assert_difference('Wizyt.count') do
      post :create, wizyt: { data: @wizyt.data, lekarz_id: @wizyt.lekarz_id, pacjent_id: @wizyt.pacjent_id }
    end

    assert_redirected_to wizyt_path(assigns(:wizyt))
  end

  test "should show wizyt" do
    get :show, id: @wizyt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wizyt
    assert_response :success
  end

  test "should update wizyt" do
    patch :update, id: @wizyt, wizyt: { data: @wizyt.data, lekarz_id: @wizyt.lekarz_id, pacjent_id: @wizyt.pacjent_id }
    assert_redirected_to wizyt_path(assigns(:wizyt))
  end

  test "should destroy wizyt" do
    assert_difference('Wizyt.count', -1) do
      delete :destroy, id: @wizyt
    end

    assert_redirected_to wizyts_path
  end
end
