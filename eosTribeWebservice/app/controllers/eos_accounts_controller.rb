class EosAccountsController < ApplicationController
  before_action :set_eos_account, only: [:show, :edit, :update, :destroy]

  # GET /eos_accounts
  # GET /eos_accounts.json
  def index
    @eos_accounts = EosAccount.all
  end

  # GET /eos_accounts/1
  # GET /eos_accounts/1.json
  def show
  end

  # GET /eos_accounts/new
  def new
    @eos_account = EosAccount.new
  end

  # GET /eos_accounts/1/edit
  def edit
  end

  # POST /eos_accounts
  # POST /eos_accounts.json
  def create
    @eos_account = EosAccount.new(eos_account_params)

    respond_to do |format|
      if @eos_account.save
        format.html { redirect_to @eos_account, notice: 'Eos account was successfully created.' }
        format.json { render :show, status: :created, location: @eos_account }
      else
        format.html { render :new }
        format.json { render json: @eos_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eos_accounts/1
  # PATCH/PUT /eos_accounts/1.json
  def update
    respond_to do |format|
      if @eos_account.update(eos_account_params)
        format.html { redirect_to @eos_account, notice: 'Eos account was successfully updated.' }
        format.json { render :show, status: :ok, location: @eos_account }
      else
        format.html { render :edit }
        format.json { render json: @eos_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eos_accounts/1
  # DELETE /eos_accounts/1.json
  def destroy
    @eos_account.destroy
    respond_to do |format|
      format.html { redirect_to eos_accounts_url, notice: 'Eos account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eos_account
      @eos_account = EosAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eos_account_params
      params.require(:eos_account).permit(:username, :email, :pubkey)
    end
end
