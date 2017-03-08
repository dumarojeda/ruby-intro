# require_relative 'racer_utils'

# class RubyRacer
#   attr_reader :players, :length, :winner

#   def initialize(players, length = 30)
#     @players = players
#     @length = length
#     @positions_player = Hash.new(0)
#     @winner = nil
#     @dice = Die.new
#   end

#   def create_race
#     @players.each {|player| @positions_player[player] = 0}
#   end

#   # Devuelve true si uno de los jugadores llego a la meta, falso de lo contrario
#   def finished?
#     status = false
#     @players.each do |player| 
#       # p "#{player} = #{@positions_player[player]}"
#       if @positions_player[player] >= @length 
#         @winner = player
#         status =  true
#       end 
#     end
#     status
#   end

#   # Retorna el ganador si hay uno, nil de lo contrario
#   # def winner
#   #   @winner
#   # end

#   # Rueda el dado y avanza la posicion del jugador respectivo
#   def advance_player!(player)
#     @positions_player[player] += @dice.roll
#   end

#   # Imprime el tablero actual
#   # El tablero siempre debe tener las mismas dimensiones
#   # Debes imprimir encima del tablero anterior
#   def print_board
#     positions_empty = Array.new(@length, " ")
#     @players.each.with_index do |player, index|
#       positions_empty[@positions_player[player] > @length ? @length : @positions_player[player]] = player

#       positions_empty.each do |e|
#         print "#{e}|"
#       end    
#       print "\n"
#     end

#   end

# end

# #=========== driver code ===========

# players = ["A", "Z"]
# game = RubyRacer.new(players)

# # limpia la pantalla
# clear_screen!

# until game.finished?
#   players.each do |player|
#     # Mueve el cursor a la esquina derecha
#     move_to_home!

#     # imprimimos el tablero en su estado inicial
#     game.print_board
#     game.advance_player!(player)

#     # tenemos que dormir un poquito, de lo contrario no vamos a ver nada del juego.
#     # mira http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
#     sleep(0.5)
#   end
# end

# # El juego termino
# game.print_board

# puts "El jugador'#{game.winner}' ha ganado!"#

require_relative 'racer_utils'

class RubyRacer
  attr_reader :players, :length, :winner
  attr_accessor :track1, :track2

  def initialize(players, length = 30)
    @die = Die.new
    @players = players
    @length = length
    @track1 = create_track(@players[0])
    @track2 = create_track(@players[1])
    @winner = nil
  end

  def create_track(player)
    track = Array.new(@length) {"|"}
    track[0] = player
    track
  end

  # Devuelve true si uno de los jugadores llego a la meta, falso de lo contrario
  def finished?
    if @track1.index(@players[0]) >= @length
      true
    elsif @track2.index(@players[1]) >= @length
      true
    end
  end

  # Retorna el ganador si hay uno, nil de lo contrario
  def winner
    if @track1.index(@players[0]) == @track2.index(@players[1])
      @winner = @players[0] + ", " + @players[1]

    elsif @track1.index(@players[0]) >= @length
      @winner = @players[0]

    elsif @track2.index(@players[1]) >= @length
      @winner = @players[1]
    else
      nil
    end
  end

  # Rueda el dado y avanza la posicion del jugador respectivo
  def advance_player!(player)
    @track1 = @track1.insert(@die.roll + @track1.index(@players[0]), @track1.delete_at(@track1.index(@players[0])))
    @track2 = @track2.insert(@die.roll + @track2.index(@players[1]), @track2.delete_at(@track2.index(@players[1])))
  end

end