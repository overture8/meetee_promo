class User < ActiveRecord::Base
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, 
    :with => %r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]+)*(\.[a-z]{2,4})$}i, 
    :message => 'email is invalid.', 
    :if => :email_given?
    
  def email_given?
    !email.blank?
  end
end
