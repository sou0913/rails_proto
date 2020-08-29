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
      create(:problem)
    end
    it 'returns 200' do
      expect(subject).to eq 200
    end
  end

  describe 'create' do
    subject { post '/problems', params: {
      problem: {
        type: "FindProblem",
        title: "test",
        statement: "test",
        matches: ["11", "22"],
        noMatches: ["aa", "bb"],
        target: "abcdefg",
        senario: "abc",
        afterReplaceAnswer: "abcdefg"
      }
    } }
    it 'returns 200' do
      is_expected.to eq 200
    end
  end

  describe 'destroy' do
    subject { delete '/problems/1' }
    before do
      create(:problem)
    end
    it 'returns 200' do
      is_expected.to eq 200
    end
  end
end
