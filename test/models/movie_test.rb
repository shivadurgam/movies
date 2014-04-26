require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "requires name" do
    instance = movies(:ad)
    instance.name = nil

    assert !instance.valid?
    assert instance.errors[:name].present?
  end

  test "upcase movie name" do
    movie1 = movies(:ad)
    movie1.actor = 'Pawan'
    movie1.save

    assert_equal 'Atharintinki Daredi', movie1.name
  end





  # test "the truth" do
  #   assert true
  # end
end
