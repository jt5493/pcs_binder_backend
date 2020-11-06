class Api::V1::BindersController < ApplicationController


    def index
        @binders = Binder.all
        render json: BinderSerializer.new(@binders)
    end



    def create
        binder = Binder.new(binder_params)
        if binder.save
            render json: binder, status: :accepted
        else
            render json: {errors: binder.errors.full_messages}, status: :unprocessible_entity
        end
    end






    private

    def binder_params
        params.require(:binder).permit(
            :title,
            :created_at
        )
    end


end
