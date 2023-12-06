#!/bin/bash

# Function to add a Git submodule with a subdirectory
add_submodule() {
  repo_url=$1
  submodule_path=$2
  subdirectory=$3

  echo "Adding submodule for $submodule_path in $subdirectory"
  git submodule add "$repo_url" "$subdirectory/$submodule_path"
}

# Add Submodules with Subdirectories
add_submodule "https://github.com/coqui-ai/TTS.git" "TTS" "ai-services"
add_submodule "https://github.com/openai/whisper.git" "whisper" "ai-services"
add_submodule "https://github.com/Stability-AI/generative-models.git" "stability" "ai-services"
add_submodule "https://github.com/facebookresearch/llama.git" "facebook-llama" "ai-services"
add_submodule "https://github.com/treasure-data/digdag.git" "digdag" "digdag"

# Commit Changes
git add .
git commit -m "Add submodules for Supabase, Facebook Llama, and Digdag"

echo "Submodules added successfully!"
