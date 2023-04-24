# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path("../test", __dir__)
require "test_helper"
include Buranya::MemMethods
class TestBuranya < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Buranya::VERSION
  end

  def test_num_facts

    response = num_facts(30, "math")
    assert_equal response.code, 200

    assert response.body.is_a?(String)

    response2 = num_facts("slovo", "math")
    assert_equal response2.code, 404
  end

  def test_cat_pic

    response = cat_pic("abyssinian")
    assert_equal response.code, 200

    response3 = cat_pic("elephant")
    assert_equal response3.body, "[]"

    response4 = cat_pic(30)
    assert_equal response4.code, 502

  end

  def test_cat_breed_review

    response = cat_breed_review("abyssinian")
    assert_equal response.code, 200

    response3 = cat_breed_review("elephant")
    assert_equal response3.body, "[]"

    response4 = cat_breed_review(30)
    assert_equal response4.code, 502

    assert response.body.is_a?(String)

  end

  def test_jokes

    response = jokes("programming")
    assert_equal response.code, 200

    response2 = jokes(30)
    assert_equal response2.body, "[]"

  end
end
