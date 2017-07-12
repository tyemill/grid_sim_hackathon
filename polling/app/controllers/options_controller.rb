class OptionsController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @option = @poll.options.create(option_params)
    redirect_to poll_path(@poll)
  end

  private
    def option_params
      params.require(:option).permit(:title, :count)
    end
end
