class Room

  attr_reader :room_name, :room_song, :guest_number

  def initialize(room_name, room_song, guest_number)

    @room_name = room_name
    @room_song = room_song
    @guest_number = guest_number

  end

  def add_song(new_song)
    @room_song.push(new_song)
  end

  def remove_song(song_removed)
    @room_song.delete(song_removed)
  end

  def add_guest(new_guest)
    @guest_number += new_guest.number
  end

  def remove_guest(guest_removed)
    @guest_number -= guest_removed.number
  end



end
