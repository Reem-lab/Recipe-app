require 'rails_helper'

RSpec.describe Food, type: :model do
  subject do
    @user = User.new(name: 'test', email: 'test@test.com')
    @food = @user.foods.new(name: 'Egg', measurement_unit: 'kg', price: 3, updated_at: Time.now,
                            created_at: Time.now)
  end

  describe 'Food model' do
    it 'Should have a name' do
      expect(subject.name).to eq 'Egg'
    end

    it 'Should have a price' do
      expect(subject.price).to eq 3
    end

    it 'Should have a measurement_unit' do
      expect(subject.measurement_unit).to eq 'kg'
    end
  end
end
