# Create semantic version tag
# ------------------------------------------------------------
# major:	no backword compatibility, language version up
# minor:	new feature, vendor update(minor and patch version)
# patch:	bug fix
# ------------------------------------------------------------
#
# Sample
# 0.0.1
# 1.0.1

# Fetch remote tags
`git fetch origin --tags`
latest_version = `git tag -l --sort=-version:refname | head -n 1`

if latest_version.empty?
  p 'No tag'
  p 'Create the initial tag: 0.0.1'
  `git tag 0.0.1`
  exit(1)
end

major, minor, patch = latest_version.chomp.split('.')

major ||= 0
minor ||= 0

# Increment the selected version
new_tag = case ENV['RELEASE_VERSION']
          when 'major'
            [(major.to_i + 1).to_s, '0', '0'].join('.')
          when 'minor'
            [major, (minor.to_i + 1).to_s, '0'].join('.')
          when 'patch'
            [major, minor, (patch.to_i + 1)].join('.')
          else
            p "Set ENV['RELEASE_VERSION'] as patch"
            [major, minor, (patch.to_i + 1)].join('.')
          end

# Create an incremented new tag
p "git tag #{new_tag}"
`git tag "#{new_tag}"`

# Push to remote
`git push origin "#{new_tag}"`
