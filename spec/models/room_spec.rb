require 'rails_helper'

RSpec.describe Room, type: :model do
  descride '#create' do
    before do
      @room = FactoryBot.build(:room)
    end

    it "nameの値が存在すれば登録できること" do
     expect(@room).to be_vaild
    end

    it "nameの空では登録できないこと" do
      @room.name = nil
      @room.be_vaildecpect(@room.errors.full_messages).to include("Name can't be blank")
    end
  end
end
