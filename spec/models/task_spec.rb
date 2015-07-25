require 'rails_helper'
require 'spec_helper'

RSpec.describe Task, type: :model do
  describe Task do
    it 'should have a factory' do
      expect(FactoryGirl.build(:task)).to be_valid
    end

    context 'validations' do
      it { should validate_presence_of(:title) }
    end
  end
end
