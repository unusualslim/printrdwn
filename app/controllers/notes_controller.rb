class NotesController < ApplicationController   

  def index
     @notes = Note.all
#    @notes = Note.where(user_id: current_user.id).or(Note.where(public: 1))
  end

  def show
    @note = Note.find(params[:id])
  end
  
  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      redirect_to action: "index"
    else
      render 'edit'
    end

  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:title,:content, :user_id, :team_id)
  end
end
