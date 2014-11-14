require 'rails_helper'

RSpec.describe Task, :type => :model do

    it "can have a description" do
      pending #TODO add can have a description test
    end
    it "can be done" do
      pending #TODO add can be done test
    end
    it "can be undone" do
      pending #TODO add can be undone test
    end
    it "can be changed from done to undone" do
      pending #TODO add can be changed from done to undone
    end



  describe "Validation" do
    it "is invalid without a description" do
      task = Task.new(description: nil)
      task.valid?
      expect(task.errors[:description]).to include("can't be blank")

    end
  end
end
