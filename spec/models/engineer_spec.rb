require 'rails_helper'

RSpec.describe Engineer, type: :model do
  describe 'instance methods' do
    describe 'calc_salary' do
      context 'エンジニアの場合' do
        it '正しい計算結果を返す' do
          employee = Employee.create(type: 'Engineer', name: 'エンジニア', service_years: 1)
          expect(employee.calc_salary).to eq 320_000
        end
      end
    end
  end
end
