class ProductStatusesController < ApplicationController
  # GET /product_statuses
  # GET /product_statuses.json
  def index
    @product_statuses = ProductStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_statuses }
    end
  end

  # GET /product_statuses/1
  # GET /product_statuses/1.json
  def show
    @product_status = ProductStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_status }
    end
  end

  # GET /product_statuses/new
  # GET /product_statuses/new.json
  def new
    @product_status = ProductStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_status }
    end
  end

  # GET /product_statuses/1/edit
  def edit
    @product_status = ProductStatus.find(params[:id])
  end

  # POST /product_statuses
  # POST /product_statuses.json
  def create
    @product_status = ProductStatus.new(params[:product_status])

    respond_to do |format|
      if @product_status.save
        format.html { redirect_to @product_status, notice: 'Product status was successfully created.' }
        format.json { render json: @product_status, status: :created, location: @product_status }
      else
        format.html { render action: "new" }
        format.json { render json: @product_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_statuses/1
  # PUT /product_statuses/1.json
  def update
    @product_status = ProductStatus.find(params[:id])

    respond_to do |format|
      if @product_status.update_attributes(params[:product_status])
        format.html { redirect_to @product_status, notice: 'Product status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_statuses/1
  # DELETE /product_statuses/1.json
  def destroy
    @product_status = ProductStatus.find(params[:id])
    @product_status.destroy

    respond_to do |format|
      format.html { redirect_to product_statuses_url }
      format.json { head :no_content }
    end
  end
end
