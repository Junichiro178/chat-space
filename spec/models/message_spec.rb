require 'rails_helper'

RSpec.describe Message, type: :model do
  describe '#create' do
    context "messageを保存できる場合" do
      it "contentがあれば保存できる" do
        message = build(:message, image: nil)
        expect(message).to be_valid
      end

      it "imageがあれば保存できる" do
        message = build(:message, content: nil)
        expect(message).to be_valid
      end

      it "content と image があれば保存できる" do
        message = build(:message)
        expect(message).to be_valid
      end
    end

    context "messageが保存できない場合" do
      it "content も image も無いと保存できない" do
        message = build(:message, content: nil, image: nil)
        message.valid?
        expect(message.errors[:content]).to include("を入力してください")
      end
   
      it "group_id が無いと保存できない" do
        message = build(:message, content: nil, group_id: nil)
        message.valid?
        expect(message.errors[:group]).to include("を入力してください")
      end

      it "user_idが無いと保存できない" do
        message = build(:message, content: nil, user_id: nil)
        message.valid?
        expect(message.errors[:user]).to include("を入力してください")
      end
    end
  end
end