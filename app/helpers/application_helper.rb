module ApplicationHelper
    def display_artist(song_obj)
        if song_obj.artist && song_obj.artist.name != ""
            link_to song_obj.artist.name, artist_path(song_obj.artist)
        else
            link_to "Add Artist", edit_song_path(song_obj)
        end
    end
end
