require "application_system_test_case"

class DoctorEduArticlesTest < ApplicationSystemTestCase
  setup do
    @doctor_edu_article = doctor_edu_articles(:one)
  end

  test "visiting the index" do
    visit doctor_edu_articles_url
    assert_selector "h1", :text => "Doctor Edu Articles"
  end

  test "creating a Doctor edu article" do
    visit doctor_edu_articles_url
    click_on "New Doctor Edu Article"

    fill_in "About article", :with => @doctor_edu_article.about_article
    fill_in "Article name", :with => @doctor_edu_article.article_name
    fill_in "Doctor", :with => @doctor_edu_article.doctor_id
    click_on "Create Doctor edu article"

    assert_text "Doctor edu article was successfully created"
    click_on "Back"
  end

  test "updating a Doctor edu article" do
    visit doctor_edu_articles_url
    click_on "Edit", :match => :first

    fill_in "About article", :with => @doctor_edu_article.about_article
    fill_in "Article name", :with => @doctor_edu_article.article_name
    fill_in "Doctor", :with => @doctor_edu_article.doctor_id
    click_on "Update Doctor edu article"

    assert_text "Doctor edu article was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor edu article" do
    visit doctor_edu_articles_url
    page.accept_confirm do
      click_on "Destroy", :match => :first
    end

    assert_text "Doctor edu article was successfully destroyed"
  end
end
