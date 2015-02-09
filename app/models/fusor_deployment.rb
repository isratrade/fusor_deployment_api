class FusorDeployment < ActiveRecord::Base
  validate :name, presence: true, uniqueness: true
  serialize :rhev_params, Hash
  serialize :cfme_params, Hash
  serialize :openstack_params, Hash
end
