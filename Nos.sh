grep -rl '$(call project-path-for,qcom-media)' ./ | xargs sed -i 's/$(call project-path-for,qcom-media)/hardware\/qcom\/media/g'
grep -rl '$(call project-path-for,qcom-audio)' ./ | xargs sed -i 's/$(call project-path-for,qcom-audio)/hardware\/qcom\/audio/g'
grep -rl '$(call project-path-for,qcom-display)' ./ | xargs sed -i 's/$(call project-path-for,qcom-display)/hardware\/qcom\/display/g'
