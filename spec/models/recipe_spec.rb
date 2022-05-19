require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @u = User.new(name: 'test', email: 'test@test.com')
    @r = @u.recipes.new(name: 'boiled egg', preparation_time: 2, cooking_time: 5,
                        description: 'Put the egg in boiling water for about 5 minutes', public: true)
  end
  it 'should return the correct name' do
    expect(@r.name).to eq 'boiled egg'
  end

  it 'should return the correct preparation_time' do
    expect(@r.preparation_time).to eq '2'
  end

  it 'should return the correct cooking_time' do
    expect(@r.cooking_time).to eq '5'
  end

  it 'should return the description' do
    expect(@r.description).to eq 'Put the egg in boiling water for about 5 minutes'
  end
end
