require 'spec_helper'

describe Micropost, :type => :model do

  let(:user) { FactoryGirl.create(:user) }
  before { @micropost = user.microposts.build(content: "Lorem ipsum") }

  subject { @micropost }

  it { is_expected.to respond_to(:content) }
  it { is_expected.to respond_to(:user_id) }
  it { is_expected.to respond_to(:user) }

  describe '#user' do
    subject { super().user }
    it { is_expected.to eq user }
  end

  it { is_expected.to be_valid }

  describe 'when user_id is not present' do
    before { @micropost.user_id = nil }
    it { is_expected.not_to be_valid }
  end

  describe 'with blank content' do
    before { @micropost.content = ' ' }
    it { is_expected.not_to be_valid }
  end

  describe 'with blanks content ' do
    before { @micropost.content = ' ' * 140 }
    it { is_expected.not_to be_valid }
  end

  describe 'with content that is too long' do
    before { @micropost.content = 'a' * 141 }
    it { is_expected.not_to be_valid }
  end

  describe 'with content that is max long' do
    before { @micropost.content = 'a' * 140 }
    it { is_expected.to be_valid }
  end
end
