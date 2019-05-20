class GamesChannel < ApplicationCable::Channel
  def subscribed
    stream_for 'games_channel'
  end

  def receive(data)
    game = Game.find(data["id"])
    game.update(team1score: data["team1score"], team2score: data["team2score"])
    if game.save
      GamesChannel.broadcast_to('games_channel', data)
    else
      byebug
    end
  end

  def unsubscribed
  end
end
