require 'test_helper'

class UserPlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_plant = user_plants(:one)
  end

  test "should get index" do
    get user_plants_url
    assert_response :success
  end

  test "should get new" do
    get new_user_plant_url
    assert_response :success
  end

  test "should create user_plant" do
    assert_difference('UserPlant.count') do
      post user_plants_url, params: { user_plant: { common_name: @user_plant.common_name, difficulty: @user_plant.difficulty, image_url: @user_plant.image_url, insight: @user_plant.insight, moisture: @user_plant.moisture, monograph_id: @user_plant.monograph_id, personality: @user_plant.personality, plant_name: @user_plant.plant_name, story_notes: @user_plant.story_notes, sunlight: @user_plant.sunlight, user_fav: @user_plant.user_fav, user_id: @user_plant.user_id } }
    end

    assert_redirected_to user_plant_url(UserPlant.last)
  end

  test "should show user_plant" do
    get user_plant_url(@user_plant)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_plant_url(@user_plant)
    assert_response :success
  end

  test "should update user_plant" do
    patch user_plant_url(@user_plant), params: { user_plant: { common_name: @user_plant.common_name, difficulty: @user_plant.difficulty, image_url: @user_plant.image_url, insight: @user_plant.insight, moisture: @user_plant.moisture, monograph_id: @user_plant.monograph_id, personality: @user_plant.personality, plant_name: @user_plant.plant_name, story_notes: @user_plant.story_notes, sunlight: @user_plant.sunlight, user_fav: @user_plant.user_fav, user_id: @user_plant.user_id } }
    assert_redirected_to user_plant_url(@user_plant)
  end

  test "should destroy user_plant" do
    assert_difference('UserPlant.count', -1) do
      delete user_plant_url(@user_plant)
    end

    assert_redirected_to user_plants_url
  end
end
