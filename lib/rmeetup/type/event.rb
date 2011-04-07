module RMeetup
  module Type
    
    # == RMeetup::Type::Event
    #
    # Data wraper for a Event fethcing response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this event.
    class Event
      attr_accessor :id, :name, :updated, :time, :photo_url, :lat, :lon, :event_url,
                    :rsvpcount, :fee, :feecurrency, :feedesc, :description, :venue_name, :venue_id, :status ,
		    :venue_address_1, :venue_zip, :venue_lat, :venue_lon, :venue_state, :venue_city 	
      
      def initialize(event = {})
        self.id           = event['id'].to_i
        self.name         = event['name']
        self.updated      = DateTime.parse(event['updated'])
        self.time         = DateTime.parse(event['time'])
        self.photo_url    = event['photo_url']
        self.lat          = event['lat'].to_f
        self.lon          = event['lon'].to_f
        self.event_url    = event['event_url']
        self.rsvpcount    = event['rsvpcount'].to_i
        self.fee          = event['fee']
        self.feecurrency  = event['feecurrency']
        self.feedesc      = event['feedesc']
	self.description  = event['description']
	self.venue_name   = event['venue_name']
	self.venue_id     = event['venue_id']	
	self.status 	  = event['status']
	self.venue_address_1 = event['venue_address1']
	self.venue_zip = event['venue_zip']
	self.venue_lat = event['venue_lat']
	self.venue_lon = event['venue_lon']
	self.venue_state = event['venue_state']
	self.venue_city = event['venue_city']
      end
    end
  end
end
