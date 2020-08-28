require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'instance methods' do
    describe 'calc_salary' do
      context '営業マンの場合' do
        it '正しい計算結果を返す' do
          employee = Employee.create(type: 'Salesman', name: '営業マン', service_years: 1)
          expect(employee.calc_salary).to eq 250_000
        end
      end
    end
  end
end
