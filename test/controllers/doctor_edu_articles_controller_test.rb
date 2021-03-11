require 'test_helper'

class DoctorEduArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_edu_article = doctor_edu_articles(:one)
  end

  test "should get index" do
    get doctor_edu_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_edu_article_url
    assert_response :success
  end

  test "should create doctor_edu_article" do
    assert_difference('DoctorEduArticle.count') do
      post doctor_edu_articles_url, :params => { :doctor_edu_article => { :about_article => @doctor_edu_article.about_article, :article_name => @doctor_edu_article.article_name, :doctor_id => @doctor_edu_article.doctor_id } }
    end

    assert_redirected_to doctor_edu_article_url(DoctorEduArticle.last)
  end

  test "should show doctor_edu_article" do
    get doctor_edu_article_url(@doctor_edu_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_edu_article_url(@doctor_edu_article)
    assert_response :success
  end

  test "should update doctor_edu_article" do
    patch doctor_edu_article_url(@doctor_edu_article),
          :params => { :doctor_edu_article => { :about_article => @doctor_edu_article.about_article, :article_name => @doctor_edu_article.article_name, :doctor_id => @doctor_edu_article.doctor_id } }
    assert_redirected_to doctor_edu_article_url(@doctor_edu_article)
  end

  test "should destroy doctor_edu_article" do
    assert_difference('DoctorEduArticle.count', -1) do
      delete doctor_edu_article_url(@doctor_edu_article)
    end

    assert_redirected_to doctor_edu_articles_url
  end
end
