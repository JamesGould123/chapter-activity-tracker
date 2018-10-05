require 'test_helper'

class ChapterActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chapter_action = chapter_actions(:one)
  end

  test "should get index" do
    get chapter_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_chapter_action_url
    assert_response :success
  end

  test "should create chapter_action" do
    assert_difference('ChapterAction.count') do
      post chapter_actions_url, params: { chapter_action: { note: @chapter_action.note, points: @chapter_action.points, user_id: @chapter_action.user_id } }
    end

    assert_redirected_to chapter_action_url(ChapterAction.last)
  end

  test "should show chapter_action" do
    get chapter_action_url(@chapter_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_chapter_action_url(@chapter_action)
    assert_response :success
  end

  test "should update chapter_action" do
    patch chapter_action_url(@chapter_action), params: { chapter_action: { note: @chapter_action.note, points: @chapter_action.points, user_id: @chapter_action.user_id } }
    assert_redirected_to chapter_action_url(@chapter_action)
  end

  test "should destroy chapter_action" do
    assert_difference('ChapterAction.count', -1) do
      delete chapter_action_url(@chapter_action)
    end

    assert_redirected_to chapter_actions_url
  end
end
