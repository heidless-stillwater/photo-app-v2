require 'carrierwave/storage/fog'
#    CarrierWave.configure do |config|
#      config.fog_provider = 'fog/aws'             # Use Fog for AWS compatibility
#      config.fog_credentials = {
#        provider:              'AWS',
#        aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],       # Your AWS access key
#        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],   # Your AWS secret access key
#        region:                ENV['AWS_REGION'],              # The region of your Spaces bucket
#        endpoint:             ENV['AWS_ENDPOINT'] # The endpoint URL of your Spaces bucket
#      }
#      config.fog_directory  =  ENV['AWS_BUCKET']  # The name of your Spaces bucket 
#      config.fog_public     = true               # Set to true if you want to make uploaded files publicly accessible 
#      config.storage        = :fog               # Use fog storage 
#    end
