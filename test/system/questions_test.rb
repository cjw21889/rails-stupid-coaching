require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h3", text: "Ask your coach anything:"
  end

  test "saying Hello yields a grumpy response from the coach" do
  visit ask_url
  fill_in "answer", with: "Hello"
  click_on "Ask"

  assert_text "I don't care, get dressed and go to work!"
  end

  test "asking a question yields an insult and grumpy response from the coach" do
  visit ask_url
  fill_in "answer", with: "What time is it?"
  click_on "Ask"

  assert_text "Silly question, get dressed and go to work!"
  end

  test "telling coach you are going to work results in a positive response" do
  visit ask_url
  fill_in "answer", with: "I am going to work"
  click_on "Ask"

  assert_text "Great!"
  end
end
