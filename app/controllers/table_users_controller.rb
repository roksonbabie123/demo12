class TableUsersController < ApplicationController
  # GET /table_users
  # GET /table_users.json
  def index
    @table_users = TableUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @table_users }
    end
  end

  # GET /table_users/1
  # GET /table_users/1.json
  def show
    @table_user = TableUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @table_user }
    end
  end

  # GET /table_users/new
  # GET /table_users/new.json
  def new
    @table_user = TableUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @table_user }
    end
  end

  # GET /table_users/1/edit
  def edit
    @table_user = TableUser.find(params[:id])
  end

  # POST /table_users
  # POST /table_users.json
  def create
    @table_user = TableUser.new(params[:table_user])

    respond_to do |format|
      if @table_user.save
        format.html { redirect_to @table_user, notice: 'Table user was successfully created.' }
        format.json { render json: @table_user, status: :created, location: @table_user }
      else
        format.html { render action: "new" }
        format.json { render json: @table_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /table_users/1
  # PUT /table_users/1.json
  def update
    @table_user = TableUser.find(params[:id])

    respond_to do |format|
      if @table_user.update_attributes(params[:table_user])
        format.html { redirect_to @table_user, notice: 'Table user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @table_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_users/1
  # DELETE /table_users/1.json
  def destroy
    @table_user = TableUser.find(params[:id])
    @table_user.destroy

    respond_to do |format|
      format.html { redirect_to table_users_url }
      format.json { head :no_content }
    end
  end
end
