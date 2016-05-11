require 'minitest/autorun'
require 'minitest/pride'
require_relative '../../app/models/senator'

class SenatorTest < Minitest::Test

  def test_senator_object_exists
    assert_kind_of Senator, Senator.new({})
  end

  def test_senator_has_attributes
    row = {"Name" => "Akaka, Daniel K.",
          "Party" => "D",
          "State" => "HI",
          "Address" => "141 HART SENATE OFFICE BUILDING WASHINGTON DC 20510",
          "Phone Number" => "(202) 224-6361",
          "Web Page" => "http://akaka.senate.gov",
          "Contact Link" => "http://akaka.senate.gov/email-senator-akaka.cfm"
        }
    assert_equal "D", Senator.new(row).party
  end

  row = {"Name" => "Akaka, Daniel K.",
        "Party" => "D",
        "State" => "HI",
        "Address" => "141 HART SENATE OFFICE BUILDING WASHINGTON DC 20510",
        "Phone Number" => "(202) 224-6361",
        "Web Page" => "http://akaka.senate.gov",
        "Contact Link" => "http://akaka.senate.gov/email-senator-akaka.cfm"
      }


end
