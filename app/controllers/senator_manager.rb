require 'erb'
require 'tilt'
require_relative '../models/senator'

template = Tilt.new('app/views/index.erb')
senator_one = Senator.new({"Name" => "Akaka, Daniel K.",
      "Party" => "D",
      "State" => "HI",
      "Address" => "141 HART SENATE OFFICE BUILDING WASHINGTON DC 20510",
      "Phone Number" => "(202) 224-6361",
      "Web Page" => "http://akaka.senate.gov",
      "Contact Link" => "http://akaka.senate.gov/email-senator-akaka.cfm"
    })

senator_two = Senator.new({"Name" => "Akaka, Daniel K.",
          "Party" => "D",
          "State" => "HI",
          "Address" => "141 HART SENATE OFFICE BUILDING WASHINGTON DC 20510",
          "Phone Number" => "(202) 224-6361",
          "Web Page" => "http://akaka.senate.gov",
          "Contact Link" => "http://akaka.senate.gov/email-senator-akaka.cfm"
        })

class Senators
  attr_reader :all_senators

  def initialize(group)
    @all_senators = group
  end
end

s = Senators.new([senator_one, senator_two])

puts s.all_senators

File.open "sites.html", "w" do |file|
    file.write template.render(s)
end
