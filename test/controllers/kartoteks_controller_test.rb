require 'test_helper'

class KartoteksControllerTest < ActionController::TestCase
  setup do
    @kartotek = kartoteks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kartoteks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kartotek" do
    assert_difference('Kartotek.count') do
      post :create, kartotek: { diagnoza_id: @kartotek.diagnoza_id, lekarz_id: @kartotek.lekarz_id, pacjent_id: @kartotek.pacjent_id, wizyt_id: @kartotek.wizyt_id }
    end

    assert_redirected_to kartotek_path(assigns(:kartotek))
  end

  test "should show kartotek" do
    get :show, id: @kartotek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kartotek
    assert_response :success
  end

  test "should update kartotek" do
    patch :update, id: @kartotek, kartotek: { diagnoza_id: @kartotek.diagnoza_id, lekarz_id: @kartotek.lekarz_id, pacjent_id: @kartotek.pacjent_id, wizyt_id: @kartotek.wizyt_id }
    assert_redirected_to kartotek_path(assigns(:kartotek))
  end

  test "should destroy kartotek" do
    assert_difference('Kartotek.count', -1) do
      delete :destroy, id: @kartotek
    end

    assert_redirected_to kartoteks_path
  end
end
