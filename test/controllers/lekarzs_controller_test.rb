require 'test_helper'

class LekarzsControllerTest < ActionController::TestCase
  setup do
    @lekarz = lekarzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lekarzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lekarz" do
    assert_difference('Lekarz.count') do
      post :create, lekarz: { email: @lekarz.email, haslo: @lekarz.haslo, imie: @lekarz.imie, nazwisko: @lekarz.nazwisko, nrTelefonu: @lekarz.nrTelefonu, specjalizacja: @lekarz.specjalizacja }
    end

    assert_redirected_to lekarz_path(assigns(:lekarz))
  end

  test "should show lekarz" do
    get :show, id: @lekarz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lekarz
    assert_response :success
  end

  test "should update lekarz" do
    patch :update, id: @lekarz, lekarz: { email: @lekarz.email, haslo: @lekarz.haslo, imie: @lekarz.imie, nazwisko: @lekarz.nazwisko, nrTelefonu: @lekarz.nrTelefonu, specjalizacja: @lekarz.specjalizacja }
    assert_redirected_to lekarz_path(assigns(:lekarz))
  end

  test "should destroy lekarz" do
    assert_difference('Lekarz.count', -1) do
      delete :destroy, id: @lekarz
    end

    assert_redirected_to lekarzs_path
  end
end
