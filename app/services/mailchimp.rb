require 'rest-client'

class Mailchimp
  def initialize(email, first_name, last_name)
    @email = email
    @first_name = first_name
    @last_name = last_name
  end

  def new_sub
    RestClient.post("https://test:#{ENV['MC_KEY']}@us15.api.mailchimp.com/3.0/lists/#{ENV['MC_LIST']}/members",
          {
            'email_address' =>
            @email,
            'merge_fields' => {
                                'FNAME' => @first_name,
                                'LNAME' => @last_name
                              },
            'status' => "subscribed"
            }.to_json,
            { :content_type => "application/json",
              accept: :json})
  end
end
