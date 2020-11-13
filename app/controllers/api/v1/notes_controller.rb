class Api::V1::NotesController < ApplicationController
    before_action :set_binder


    def index
        @notes = @binder.notes
        render json: NoteSerializer.new(@notes)
    end

    def show
        @note = @binder.notes.find_by(id: params[:id])
        render json: NoteSerializer.new(@note) 
    end



    def create
        @note = @binder.notes.build(note_params)
        if @note.save
            render json: BinderSerializer.new(@binder), status: :accepted
        else
            render json: {errors: @note.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy

    end


    private

    def set_binder
        @binder = Binder.find(params[:binder_id])
    end

    def note_params
        params.require(:note).permit(
            :title,
            :content,
            :binder_id
        )
    end

end
