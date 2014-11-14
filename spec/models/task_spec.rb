require 'rails_helper'

RSpec.describe Task, :type => :model do

  context 'Functionality' do
    it "can have a description" do
      task = Task.new(description: "This is a description")
      expect(task).to be_valid
    end
    it "can be done" do
      task = Task.new(description: "This is a description",done:true)
      expect(task).to be_valid
    end
    it "can be undone" do
      task = Task.new(description: "This is a description",done:false)
      expect(task).to be_valid
    end
    it "can be changed from done to undone" do
      task = Task.new(description: "This is a description",done:false)
      task.save
      task.done=false
      task.valid?
      expect(task).to be_valid
    end

  end



  context "Validation" do
    it "is invalid without a description" do
      task = Task.new(description: nil)
      task.valid?
      expect(task.errors[:description]).to include("can't be blank")

    end
  end
end
