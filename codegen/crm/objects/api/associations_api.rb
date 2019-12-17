=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are native objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module Hubspot
  module Client
    module Crm
      module Objects
        module Api
          class AssociationsApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Remove an association between two objects
            # 
            # @param object_type 
            # @param object_id 
            # @param associated_object_type 
            # @param to_object_id 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def archive_association(object_type, object_id, associated_object_type, to_object_id, opts = {})
              archive_association_with_http_info(object_type, object_id, associated_object_type, to_object_id, opts)
              nil
            end

            # Remove an association between two objects
            # 
            # @param object_type 
            # @param object_id 
            # @param associated_object_type 
            # @param to_object_id 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
            def archive_association_with_http_info(object_type, object_id, associated_object_type, to_object_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: AssociationsApi.archive_association ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling AssociationsApi.archive_association"
              end
              # verify the required parameter 'object_id' is set
              if @api_client.config.client_side_validation && object_id.nil?
                fail ArgumentError, "Missing the required parameter 'object_id' when calling AssociationsApi.archive_association"
              end
              # verify the required parameter 'associated_object_type' is set
              if @api_client.config.client_side_validation && associated_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'associated_object_type' when calling AssociationsApi.archive_association"
              end
              # verify the required parameter 'to_object_id' is set
              if @api_client.config.client_side_validation && to_object_id.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.archive_association"
              end
              # resource path
              local_var_path = '/{objectType}/{objectId}/associations/{associatedObjectType}/{toObjectId}'.sub('{' + 'objectType' + '}', object_type.to_s).sub('{' + 'objectId' + '}', object_id.to_s).sub('{' + 'associatedObjectType' + '}', associated_object_type.to_s).sub('{' + 'toObjectId' + '}', to_object_id.to_s)

              # query parameters
              query_params = {}

              # header parameters
              header_params = {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = {}

              # http body (model)
              post_body = nil
              auth_names = ['hapikey', 'oauth2']
              data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: AssociationsApi#archive_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
            # Associate two objects
            # 
            # @param object_type 
            # @param object_id 
            # @param associated_object_type 
            # @param to_object_id 
            # @param [Hash] opts the optional parameters
            # @return [SimplePublicObject]
            def create_association(object_type, object_id, associated_object_type, to_object_id, opts = {})
              data, _status_code, _headers = create_association_with_http_info(object_type, object_id, associated_object_type, to_object_id, opts)
              data
            end

            # Associate two objects
            # 
            # @param object_type 
            # @param object_id 
            # @param associated_object_type 
            # @param to_object_id 
            # @param [Hash] opts the optional parameters
            # @return [Array<(SimplePublicObject, Fixnum, Hash)>] SimplePublicObject data, response status code and response headers
            def create_association_with_http_info(object_type, object_id, associated_object_type, to_object_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: AssociationsApi.create_association ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling AssociationsApi.create_association"
              end
              # verify the required parameter 'object_id' is set
              if @api_client.config.client_side_validation && object_id.nil?
                fail ArgumentError, "Missing the required parameter 'object_id' when calling AssociationsApi.create_association"
              end
              # verify the required parameter 'associated_object_type' is set
              if @api_client.config.client_side_validation && associated_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'associated_object_type' when calling AssociationsApi.create_association"
              end
              # verify the required parameter 'to_object_id' is set
              if @api_client.config.client_side_validation && to_object_id.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_id' when calling AssociationsApi.create_association"
              end
              # resource path
              local_var_path = '/{objectType}/{objectId}/associations/{associatedObjectType}/{toObjectId}'.sub('{' + 'objectType' + '}', object_type.to_s).sub('{' + 'objectId' + '}', object_id.to_s).sub('{' + 'associatedObjectType' + '}', associated_object_type.to_s).sub('{' + 'toObjectId' + '}', to_object_id.to_s)

              # query parameters
              query_params = {}

              # header parameters
              header_params = {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = {}

              # http body (model)
              post_body = nil
              auth_names = ['hapikey', 'oauth2']
              data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => 'SimplePublicObject')
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: AssociationsApi#create_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
            # List associations of an object by type
            # 
            # @param object_type 
            # @param object_id 
            # @param associated_object_type 
            # @param [Hash] opts the optional parameters
            # @return [CollectionResponseSimplePublicObjectId]
            def get_associations(object_type, object_id, associated_object_type, opts = {})
              data, _status_code, _headers = get_associations_with_http_info(object_type, object_id, associated_object_type, opts)
              data
            end

            # List associations of an object by type
            # 
            # @param object_type 
            # @param object_id 
            # @param associated_object_type 
            # @param [Hash] opts the optional parameters
            # @return [Array<(CollectionResponseSimplePublicObjectId, Fixnum, Hash)>] CollectionResponseSimplePublicObjectId data, response status code and response headers
            def get_associations_with_http_info(object_type, object_id, associated_object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: AssociationsApi.get_associations ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling AssociationsApi.get_associations"
              end
              # verify the required parameter 'object_id' is set
              if @api_client.config.client_side_validation && object_id.nil?
                fail ArgumentError, "Missing the required parameter 'object_id' when calling AssociationsApi.get_associations"
              end
              # verify the required parameter 'associated_object_type' is set
              if @api_client.config.client_side_validation && associated_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'associated_object_type' when calling AssociationsApi.get_associations"
              end
              # resource path
              local_var_path = '/{objectType}/{objectId}/associations/{associatedObjectType}'.sub('{' + 'objectType' + '}', object_type.to_s).sub('{' + 'objectId' + '}', object_id.to_s).sub('{' + 'associatedObjectType' + '}', associated_object_type.to_s)

              # query parameters
              query_params = {}

              # header parameters
              header_params = {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = {}

              # http body (model)
              post_body = nil
              auth_names = ['hapikey', 'oauth2']
              data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => 'CollectionResponseSimplePublicObjectId')
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: AssociationsApi#get_associations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end