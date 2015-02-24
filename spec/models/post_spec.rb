require 'rails_helper'

RSpec.describe Post, :type => :model do
  subject { FactoryGirl::create :post }
  describe "comment-ability" do
    context "initially" do
      it "has no comments" do
        expect(subject.comments.length).to be 0
      end
    end
    context "when comments exist" do
      before(:each) { @comment = FactoryGirl.create(:comment, post_id: subject.id) }
      it "has comments" do
        expect(subject.comments).to include(@comment)
      end
    end
  end
end
