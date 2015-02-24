require 'rails_helper'

RSpec.describe Post, :type => :model do
  subject { FactoryGirl::create :post }
  describe "comment-ability" do
    it "initially" do
      expect(subject.comments.length).to be 0
    end
    context "when comments exist" do
      before(:each) { @comment = FactoryGirl.create(:comment, post_id: subject.id) }
      it "#comments" do
        expect(subject.comments).to include(@comment)
      end
    end
  end
end
