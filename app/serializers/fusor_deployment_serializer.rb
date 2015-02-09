class FusorDeploymentSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :rhev_params, :cfme_params, :openstack_params, :created_at, :updated_at
end
