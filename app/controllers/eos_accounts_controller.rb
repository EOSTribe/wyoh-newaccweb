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

  def generate_username
    num = rand(5) + 4
    return "#{get_word(num)}#{get_word(12-num)}"
  end

  def get_word(word_length)
    number = rand(2222) * (word_length + 1)
    words = open("dictionary_#{word_length}.txt",'r')
    words.seek(number)
    word = words.readline.chomp
    return word
  end

  # POST /eos_accounts
  # POST /eos_accounts.json
  def create
    @eos_account = EosAccount.new(eos_account_params)
    eos_account_params[:username].downcase

    respond_to do |format|
      if @eos_account.save

        # Old mailer code, we'll have to take a look at it to get it working - github issue #10
        # UserMailer.with(eos_account: @eos_account).welcome_email.deliver_later

        format.html { redirect_to @eos_account, notice: 'EOS account was successfully requested!' }
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
      params.require(:eos_account).permit(:username, :email, :pubkey, :description)
    end
end
