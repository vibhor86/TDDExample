require 'rails_helper'

RSpec.describe Comment, :type => :model do
  let(:post) { FactoryGirl.create(:post) }
  subject { FactoryGirl::create :comment, post_id: post.id }

  it "belongs to post" do
    expect(subject.post).to have_attributes post.attributes
  end
end
