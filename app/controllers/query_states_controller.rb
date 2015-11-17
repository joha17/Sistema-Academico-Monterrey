class QueryStatesController < ApplicationController
  before_action :set_query_state, only: [:show, :edit, :update, :destroy]

  # GET /query_states
  # GET /query_states.json
  def index
    @query_states = QueryState.all
  end

  # GET /query_states/1
  # GET /query_states/1.json
  def show
  end

  # GET /query_states/new
  def new
    @query_state = QueryState.new
  end

  # GET /query_states/1/edit
  def edit
  end

  # POST /query_states
  # POST /query_states.json
  def create
    @query_state = QueryState.new(query_state_params)

    respond_to do |format|
      if @query_state.save
        format.html { redirect_to @query_state, notice: 'Query state was successfully created.' }
        format.json { render :show, status: :created, location: @query_state }
      else
        format.html { render :new }
        format.json { render json: @query_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /query_states/1
  # PATCH/PUT /query_states/1.json
  def update
    respond_to do |format|
      if @query_state.update(query_state_params)
        format.html { redirect_to @query_state, notice: 'Query state was successfully updated.' }
        format.json { render :show, status: :ok, location: @query_state }
      else
        format.html { render :edit }
        format.json { render json: @query_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /query_states/1
  # DELETE /query_states/1.json
  def destroy
    @query_state.destroy
    respond_to do |format|
      format.html { redirect_to query_states_url, notice: 'Query state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query_state
      @query_state = QueryState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def query_state_params
      params.require(:query_state).permit(:DeState)
    end
end
