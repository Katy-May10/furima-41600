require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.create(:item)
    sleep(1)
    @order = FactoryBot.build(:order, user_id: @user.id, item_id: @item.id)
  end

  context '内容に問題がない場合' do
    it 'tokenがあり、user, itemと紐付いていれば保存できること' do
      expect(@order).to be_valid
    end
  end

  context '内容に問題がある場合' do
    it 'tokenが空では保存できないこと' do
      @order.token = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Token can't be blank")
    end
    it 'userが紐付いていないと保存できないこと' do
      @order.user_id = nil
      @order.valid?
      expect(@order.errors.full_messages).to include('User must exist')
    end
    it 'itemと紐付いていなければ保存できないこと' do
      @order.item_id = nil
      @order.valid?
      expect(@order.errors.full_messages).to include('Item must exist')
    end
  end
end
