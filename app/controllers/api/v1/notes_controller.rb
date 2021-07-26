class Api::V1::NotesController < ApplicationController
    def index
        notes = Note.all.order("created_at DESC")
        
        render json: notes
    end


    def create
        note = Note.create(note_params)

        render json: note

    end



    private 

    def note_params
        params.require(:note).permit(:username, :message)

    end




end