require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get new" do
    get new_root_path
    assert_response :success
  end

  test "should create article" do
    assert_difference("Article.count") do
      post root_path, params: { article: { body: @article.body, title: @article.title } }
    end

    assert_redirected_to root_path(Article.last)
  end

  test "should show article" do
    get root_path(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_root_path(@article)
    assert_response :success
  end

  test "should update article" do
    patch root_path(@article), params: { article: { body: @article.body, title: @article.title } }
    assert_redirected_to root_path(@article)
  end

  test "should destroy article" do
    assert_difference("Article.count", -1) do
      delete root_path(@article)
    end

    assert_redirected_to root_path
  end
end
