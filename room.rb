class Room

  attr_reader :room_name, :room_song

  def initialize(room_name, room_song)

    @room_name = room_name
    @room_song = room_song

  end

  def add_song(new_song)
    @room_song.push(new_song)
  end



end
