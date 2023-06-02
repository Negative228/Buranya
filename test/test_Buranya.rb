# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path("../test", __dir__)
require "test_helper"
include  Buranya#::MemMethods
class TestBuranya < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Buranya::VERSION
  end

  def test_num_facts

    response = num_facts(30, "math")
    assert response

  end

  def test_cat_breed_review

    response = cat_breed_review("abyssinian")
    assert response

  end

  def test_jokes
    
    response = jokes("programming")
    assert response
    
  end
end
