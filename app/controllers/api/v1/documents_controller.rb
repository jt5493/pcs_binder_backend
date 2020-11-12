class Api::V1::DocumentsController < ApplicationController
    before_action :set_binder


    def index
        @documents = @binder.documents
        render json: DocumentSerializer.new(@documents)
    end

    def show
        @document = @binder.documents.find_by(id: params[:id])
        render json: DocumentSerializer.new(@document)
    end



    def create
        @document = @binder.documents.build(document_params)
        if @document.save
            render json: @binder, status: :accepted
        else
            render json: {errors: @document.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy

    end


    private

    def set_binder
        @binder = Binder.find(params[:binder_id])
    end

    def document_params
        params.require(:document).permit(
            :title,
            :document,
            :binder_id
        )
    end

end
