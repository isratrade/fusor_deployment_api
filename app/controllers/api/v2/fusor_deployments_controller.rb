module Api
  module V2
    class FusorDeploymentsController < V2::BaseController

      include Api::Version2

      def index
        @fusor_deployments = FusorDeployment.all
        render :json => @fusor_deployments, :each_serializer => FusorDeploymentSerializer
      end

      def show
        @fusor_deployment = FusorDeployment.find(params[:id])
        render :json => @fusor_deployment, :serializer => FusorDeploymentSerializer
      end

    end
  end
end
