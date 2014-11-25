class RockPaperScissorsController < ApplicationController
  helper_method :win
  def index

  end
  def show
    @RHS = rand(3)
    @LHS = params[:id].to_i
  end
  def win
    @judge = false
    if @LHS == 0 && @RHS == 2 then @judge = true end
    if @LHS == 1 && @RHS == 0 then @judge = true end
    if @LHS == 2 && @RHS == 1 then @judge = true end
    @judge
  end
end
