require "grape-swagger-rails"
module API
    module V1
        class Base < Grape::API
            mount API::V1::Character
            
            add_swagger_documentation(
                api_version: "v1",
                hide_documentation_path: true,
                mount_path: "/api/v1/swagger_doc",
                hide_format: true
            )
        end
    end
end