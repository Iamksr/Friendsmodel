class FriendlistsController < ApplicationController
  before_action :set_friendlist, only: [:show, :edit, :update, :destroy]

  # GET /friendlists
  # GET /friendlists.json
  def index
    @friendlists = Friendlist.all
  end
  def user_table
    @users = User.all 
  end
  def my_profile
     current_user == @user
  end

  def your_profile
    @friendlist = User.find(params[:id])
end
def pending
    
    # @users=current_user

    # users = User.find_by(params[:id])
    @user = current_user.pending_friends

  end
  # GET /friendlists/1
  # GET /friendlists/1.json
  def show
  
  end

  # GET /friendlists/new
  def new
    @friendlist = Friendlist.new
  end

  # GET /friendlists/1/edit
  def edit
  end

  # POST /friendlists
  # POST /friendlists.json
  def create
    @friendlist = Friendlist.new(friendlist_params)

    respond_to do |format|
      if @friendlist.save
        format.html { redirect_to @friendlist, notice: 'Friendlist was successfully created.' }
        format.json { render :show, status: :created, location: @friendlist }
      else
        format.html { render :new }
        format.json { render json: @friendlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendlists/1
  # PATCH/PUT /friendlists/1.json
  def update
    respond_to do |format|
      if @friendlist.update(friendlist_params)
        format.html { redirect_to @friendlist, notice: 'Friendlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @friendlist }
      else
        format.html { render :edit }
        format.json { render json: @friendlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendlists/1
  # DELETE /friendlists/1.json
  def destroy
    @friendlist.destroy
    respond_to do |format|
      format.html { redirect_to friendlists_url, notice: 'Friendlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendlist
      @friendlist = Friendlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendlist_params
      params.require(:friendlist).permit(:name, :user_id, :friend_id)
    end
end
