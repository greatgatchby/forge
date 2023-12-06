#!/bin/bash

# Function to update a Git submodule
update_submodule() {
  submodule_path=$1

  echo "Updating submodule: $submodule_path"
  git submodule update --remote "$submodule_path"
}

# Update Submodules
update_submodule "ai-services/TTS"
update_submodule "ai-services/whisper"
update_submodule "ai-services/stability"
update_submodule "ai-services/facebook-llama"
update_submodule "digdag/digdag"

echo "Submodules updated successfully!"
