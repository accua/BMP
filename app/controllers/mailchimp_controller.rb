class MailchimpController < ApplicationController
  def create
    @mailchimp = Mailchimp.new(params[:email], params[:first_name], params[:last_name])
    @mailchimp.new_sub
  end
end
