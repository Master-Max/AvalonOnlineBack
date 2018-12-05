class ApplicationController < ActionController::API

  def current_player
    @current_player ||= Player.find(cookies.signed[:player_id]) if cookies.signed[:player_id]
  end

  def logged_in?
    !!current_player
  end

  def log_in(player_id)
    cookies.signed[:player_id] = user_id
  end

end
