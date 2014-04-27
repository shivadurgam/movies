require 'test_helper'

class MovieTest < ActiveSupport::TestCase


  test "requires name" do
    movie1 = movies(:ad)
    #instance.name = nil

    assert movie1.valid?
    #assert movie1.errors[:name]
  end

  test "upcase movie name" do
    movie1 = movies(:ad)
    movie1.save

    assert_equal 'Pawan Kalyan', movie1.actor
  end

  def test_validate_presence
    movie1 = Movie.create(name: 'Race Gurram', actor: 'Allu Arjun', actress: 'Shruthi')
    assert movie1.persisted?, "Fields can't be blank"
    #assert !movie1.persisted?, 
    #assert_equal true, movie1.persisted?, "fields can't be blank"
    #assert_equal false, movie1.persisted?, 
  end

  def test_validate_length
    movie1 = Movie.create(name: 'race gurram', actor: 'Allu Arjun', actress: 's')
    assert !movie1.persisted?, "should have minimum 2 characters"
  end

  def test_validate_format
    movie1 = Movie.create(name: 'Kick2#', actor: 'Allu Arjun', actress: 'Shruthi')
    assert !movie1.persisted?, "movie name can be alphanumeric but actor and actress' name can only be alphabets"
  end

  def test_search
    movie1 = movies(:lb)
    movie2 = movies(:rg)
    movie3 = movies(:ad)
    
    result = Movie.search('purna')
    puts result
    assert_equal [movie1], result
  end





  # test "the truth" do
  #   assert true
  # end
end
