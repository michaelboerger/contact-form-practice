class ContactInquiry < ActiveRecord::Base
  validates :email, presence: true, format: {with: /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\Z/}
  validates :subject, presence: true
  validates :description, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
