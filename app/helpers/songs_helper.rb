module SongsHelper

    def artist_id_field(song)
        if song.artist.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          hidden_field_tag "song[artist_id]", song.artist_id
        end
    end

end

#select_tag = creates the drop down
#"song[artist_id]" = name of the fields
# options_from_collection_for_select(Artist.all, :id, :name) = helper that would create the options 
