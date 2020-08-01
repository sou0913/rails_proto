class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :service_years
end
