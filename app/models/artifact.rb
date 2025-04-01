class Artifact < ApplicationRecord
  belongs_to :user
  mount_uploader :artifact, ArtifactUploader
end
