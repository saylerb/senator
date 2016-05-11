
# "Akaka, Daniel K.",D,HI,141 HART SENATE OFFICE BUILDING WASHINGTON DC 20510,(202) 224-6361,http://akaka.senate.gov,http://akaka.senate.gov/email-senator-akaka.cfm
class Senator
  attr_reader :name,
              :party,
              :state,
              :address,
              :phone_number,
              :web_page,
              :contact_link
              
  def initialize(row)
    @name = row["Name"]
    @party = row["Party"]
    @state = row["State"]
    @address = row["Address"]
    @phone_number = row["Phone Number"]
    @web_page = row["Web Page"]
    @contact_link = row["Contact Link"]
  end
end
