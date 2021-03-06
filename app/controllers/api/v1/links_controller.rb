class Api::V1::LinksController < ApplicationController
    before_action :set_binder

    
    def index
        @links = @binder.links
        render json: LinkSerializer.new(@links)
    end

    def show
        @link = @binder.links.find_by(id: params[:id])
        render json: LinkSerializer.new(@link)
    end



    def create
        @link = @binder.links.build(link_params)
        if @link.save
            render json: BinderSerializer.new(@binder), status: :accepted
        else
            render json: {errors: @link.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        link = Link.find(params["id"])
       
        link.destroy
        
        render json: BinderSerializer.new(@binder)
    end


    private

    def set_binder
        @binder = Binder.find(params[:binder_id])
    end

    def link_params
        params.require(:link).permit(
            :title,
            :url,
            :binder_id
        )
    end

end
