class StatusesController < ApplicationController
  def index
    @statuses = Status.order('created_at DESC').all
  end

  # GET /statuses/show
  def show
    @status = Status.find(params[:id])
  end

  # GET /statuses/new
  def new
    @status = Status.new
  end


  # POST /statuses
  def create
    @status = Status.new(params[:status])

    if @status.save
      redirect_to statuses_path
    else
      render action: "new"
    end
  end

  # DELETE /statuses/1
  def destroy
    @status = Status.find(params[:id])
    @status.destroy

    redirect_to statuses_url
  end
end
