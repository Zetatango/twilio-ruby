##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class NewKeyList < ListResource
            ##
            # Initialize the NewKeyList
            # @param [Version] version Version that contains the resource
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            
            # @return [NewKeyList] NewKeyList
            def initialize(version, account_sid: nil)
              super(version)
              
              # Path Solution
              @solution = {
                  account_sid: account_sid
              }
              @uri = "/Accounts/#{@solution[:account_sid]}/Keys.json"
            end
            
            ##
            # Retrieve a single page of NewKeyInstance records from the API.
            # Request is executed immediately.
            # @param [String] friendly_name The friendly_name
            
            # @return [NewKeyInstance] Newly created NewKeyInstance
            def create(friendly_name: nil)
              data = {
                  'FriendlyName' => friendly_name,
              }
              
              payload = @version.create(
                  'POST',
                  @uri,
                  data: data
              )
              
              return NewKeyInstance.new(
                  @version,
                  payload,
                  account_sid: @solution['account_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Api.V2010.NewKeyList>'
            end
          end
        
          class NewKeyPage < Page
            ##
            # Initialize the NewKeyPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            
            # @return [NewKeyPage] NewKeyPage
            def initialize(version, response, solution)
              super(version, response)
              
              # Path Solution
              @solution = solution
            end
            
            ##
            # Build an instance of NewKeyInstance
            # @param [Hash] payload Payload response from the API
            
            # @return [NewKeyInstance] NewKeyInstance
            def get_instance(payload)
              return NewKeyInstance.new(
                  @version,
                  payload,
                  account_sid: @solution['account_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Api.V2010.NewKeyPage>'
            end
          end
        
          class NewKeyInstance < InstanceResource
            ##
            # Initialize the NewKeyInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] account_sid A 34 character string that uniquely identifies this
            #   resource.
            
            # @return [NewKeyInstance] NewKeyInstance
            def initialize(version, payload, account_sid: nil)
              super(version)
              
              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'friendly_name' => payload['friendly_name'],
                  'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                  'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                  'secret' => payload['secret'],
              }
            end
            
            def sid
              @properties['sid']
            end
            
            def friendly_name
              @properties['friendly_name']
            end
            
            def date_created
              @properties['date_created']
            end
            
            def date_updated
              @properties['date_updated']
            end
            
            def secret
              @properties['secret']
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              "<Twilio.Api.V2010.NewKeyInstance>"
            end
          end
        end
      end
    end
  end
end