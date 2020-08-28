require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'instance methods' do
    describe 'calc_salary' do
      context '部署が決まってない人の場合' do
        it 'standard errorを返す' do
          employee = Employee.create(name: '部署未決定な人', service_years: 0)
          expect { employee.calc_salary }.to raise_error StandardError
        end
      end
    end
  end
end
