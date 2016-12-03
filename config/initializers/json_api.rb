ActiveSupport.on_load(:action_controller) do
    require 'active_model_serializers/register_jsonapi_renderer'
    # ActiveModel::Serializer.config.adapter = :json
    # ActiveModelSerializers.config.adapter = :json_api
end

ActiveModelSerializers.config.adapter = :json_api # Default: `:attributes`
