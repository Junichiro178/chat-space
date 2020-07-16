class Api::MessagesController < applicationController
  def index
    group = Group.find(params[group_id])
    last_message_id = params[:id].to_i
    @messages = 
  end
end