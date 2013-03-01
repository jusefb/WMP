require 'test_helper'

class IngredientsControllerTest < ActionController::TestCase
  setup do
    @ingredient = ingridients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingridient" do
    assert_difference('Ingridient.count') do
      post :create, ingredient: { description: @ingredient.description, title: @ingredient.title }
    end

    assert_redirected_to ingridient_path(assigns(:ingredient))
  end

  test "should show ingridient" do
    get :show, id: @ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient
    assert_response :success
  end

  test "should update ingridient" do
    put :update, id: @ingredient, ingredient: { description: @ingredient.description, title: @ingredient.title }
    assert_redirected_to ingridient_path(assigns(:ingredient))
  end

  test "should destroy ingridient" do
    assert_difference('Ingridient.count', -1) do
      delete :destroy, id: @ingredient
    end

    assert_redirected_to ingridients_path
  end
end
