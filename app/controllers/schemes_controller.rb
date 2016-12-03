class SchemesController < ApplicationController
    before_action :set_scheme, only: [:show, :update, :destroy]
    before_action :authenticate_user

    # GET /schemes
    def index
        render json: current_user.schemes
    end

    # GET /schemes/1
    def show
        render json: @scheme
    end

    # POST /schemes
    def create
        @scheme = Scheme.new(scheme_params)

        if @scheme.save
            @scheme.users << current_user
            render json: @scheme, status: :created, location: @scheme
        else
            render json: @scheme.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /schemes/1
    def update
        if @scheme.update(scheme_params)
            render json: @scheme
        else
            render json: @scheme.errors, status: :unprocessable_entity
        end
    end

    # DELETE /schemes/1
    def destroy
        @scheme.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_scheme
        @scheme = Scheme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scheme_params
        params.require(:scheme).permit(:name, :description, :payout_limit, :excess, :premium)
    end
end
