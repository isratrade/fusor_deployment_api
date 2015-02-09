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

      def create
        @fusor_deployment = FusorDeployment.new(params[:fusor_deployment])
        if @fusor_deployment.save
          render :json => @fusor_deployment, :serializer => FusorDeploymentSerializer
        else
          render json: {errors: @fusor_deployment.errors}, status: 422
        end
      end

      def update
        @fusor_deployment = FusorDeployment.find(params[:id])
        if @fusor_deployment.update_attributes(params[:deployment])
          render :json => @fusor_deployment, :serializer => FusorDeploymentSerializer
        else
          render json: {errors: @fusor_deployment.errors}, status: 422
        end
      end

      def destroy
        @fusor_deployment = FusorDeployment.find(params[:id])
        if @fusor_deployment.destroy
          render :json => {}, status: 204
        else
          render json: {errors: @fusor_deployment.errors}, status: 422
        end
      end

    end
  end
end
