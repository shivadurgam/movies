require 'test_helper'

class MoviesControllerTest < ActionController::TestCase

  setup do
    @movie = movies(:ad)
  end

  test "should get index when signed in" do
    sign_in users(:shiva)

    get :index
    assert_response :success
    assert assigns(:movies)
  end

  test "should redirect to sign in when not signed in" do
    
    get :index
    assert_response :redirect
  end

  test "should get new" do
    movie1 = Movie.new
    assert movie1.persisted?
  end

  test "shoud create movie1" do
    movie1 = @movie
    movie1.save
    assert_response :success
  end

  test "should create movie" do
    assert_difference('movies.count') do
      post :create, movies: { name: @movie.name, actor: @movie.actor, actress: @movie.actress}
    end

    assert_redirected_to movie_path(assigns(:movies))
  end

  test "should show movie" do
    get :show, id: @movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie
    assert_response :success
  end

  test "should update movie" do
    patch :update, id: @movie, movies: { name: @movie.name, actor: @movie.actor, actress: @movie.actress}
    assert_redirected_to movie_path(assigns(:movies))
  end

  test "should destroy movie" do
    assert_difference('movies.count', -1) do
      delete :destroy, id: @movie
    end

    assert_redirected_to movies_path
  end
  


end
