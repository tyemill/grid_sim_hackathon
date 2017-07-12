class OptionsController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @option = @poll.options.create(option_params)
    @option.update(count: 0)
    redirect_to poll_path(@poll)
  end

  def update
    option = Option.find(params[:id])
    option.update(count: option.count + 1)
    @poll = Poll.find(params[:poll_id])
    redirect_to poll_path(@poll)
  end

  private
    def option_params
      params.require(:option).permit(:title, :count)
    end
end
