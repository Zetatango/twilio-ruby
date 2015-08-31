module Twilio
  module Resources
    module Monitor
      class EventList < Twilio::REST::ListResource
        can :list, :get
        command_alias :events
        
        def initialize(client, inheritance={})
          super
          path "/Events.json"
          instance_id_key 'sid'
          instance_class EventInstance
          list_key 'events'
        end
      end
    
      class EventInstance < Twilio::REST::InstanceResource
        def initialize(client, inheritance={}, params={}, query_params={})
          super
          path "/Events/#{@sid}.json"
          instance_id_key 'sid'
        end
      end
    end
  end
end