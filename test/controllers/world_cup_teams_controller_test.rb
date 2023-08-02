require "test_helper"

class WorldCupTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @world_cup_team = world_cup_teams(:one)
  end

  test "should get index" do
    get world_cup_teams_url, as: :json
    assert_response :success
  end

  test "should create world_cup_team" do
    assert_difference("WorldCupTeam.count") do
      post world_cup_teams_url, params: { world_cup_team: { name: @world_cup_team.name } }, as: :json
    end

    assert_response :created
  end

  test "should show world_cup_team" do
    get world_cup_team_url(@world_cup_team), as: :json
    assert_response :success
  end

  test "should update world_cup_team" do
    patch world_cup_team_url(@world_cup_team), params: { world_cup_team: { name: @world_cup_team.name } }, as: :json
    assert_response :success
  end

  test "should destroy world_cup_team" do
    assert_difference("WorldCupTeam.count", -1) do
      delete world_cup_team_url(@world_cup_team), as: :json
    end

    assert_response :no_content
  end
end
