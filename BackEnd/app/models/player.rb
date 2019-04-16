require 'pry'
class Player < ApplicationRecord
  require 'httparty'
  require 'uri'

  has_many :player_cards
  has_many :users, through: :player_cards

  def self.seeder(data)
    data ? data.map { |player| Player.create(id: player["id"], first_name: player["first_name"], last_name: player["last_name"], weight_pounds: player["weight_pounds"], height_feet: player["height_feet"], height_inches: player["height_inches"], team_name: player["team"]["full_name"], position: player["position"])} : nil
  end

  def self.seedImages
    players = Player.all

    players.each do |player|
      url = "https://nba-players.herokuapp.com/players/#{player.last_name}/#{player.first_name}"
      encoded_url = URI.encode(url)
      if HTTParty.get(URI.parse(encoded_url)).include?('Sorry')
        player.update(img: nil)
      else
        player.update(img: URI.parse(encoded_url))
    end
      # img ?  nil : (playervar.img = img)
    end
  end

end
