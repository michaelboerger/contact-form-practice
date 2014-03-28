require 'spec_helper'

describe ContactInquiry do

  let(:valid_attrs) { {
    email: 'email@email.com',
    subject: 'subject help',
    description: 'How do I subject?',
    first_name: 'Guy',
    last_name: 'Incognito'
    } }

  it "has an email address" do
    inquiry = ContactInquiry.new(valid_attrs.merge(email: ''))
    inquiry.valid?
    expect(inquiry.errors[:email]).to include "can't be blank"
  end

  it 'has a valid email' do
    inquiry = ContactInquiry.new(valid_attrs)
    inquiry.email = 'HELPHOWDOIEMAILPEOPLE'
    expect(inquiry).to_not be_valid
    inquiry.email = '@aol.com'
    expect(inquiry).to_not be_valid
    inquiry.email = 'jerk@jerkcom'
    expect(inquiry).to_not be_valid
    inquiry.email = 'email.com'
  end

  it "has a subject" do
    inquiry = ContactInquiry.new(valid_attrs.merge(subject: ''))
    inquiry.valid?
    expect(inquiry.errors[:subject]).to include "can't be blank"
  end

  it "has a description" do
    inquiry = ContactInquiry.new(valid_attrs.merge(description: ''))
    inquiry.valid?
    expect(inquiry.errors[:description]).to include "can't be blank"
  end

  it "has a first name" do
    inquiry = ContactInquiry.new(valid_attrs.merge(first_name: ''))
    inquiry.valid?
    expect(inquiry.errors[:first_name]).to include "can't be blank"
  end

  it "has a last name" do
    inquiry = ContactInquiry.new(valid_attrs.merge(last_name: ''))
    inquiry.valid?
    expect(inquiry.errors[:last_name]).to include "can't be blank"
  end
end
