require 'rails_helper'

RSpec.describe "Problems", type: :request do
  describe 'index' do
    subject { get '/problems?page=1' }
    it 'returns 200' do
      expect(subject).to eq 200
    end
  end
  describe 'show' do
    subject { get '/problems/1' }
    before do
      Problem.create(title: '基本問題1', target: 'abc', statement: 'abcabc')
    end
    it 'returns 200' do
      expect(subject).to eq 200
    end
  end
end
