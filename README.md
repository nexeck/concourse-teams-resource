# concourse-teams-resource
## Microsoft Teams
Create a webhook endpoint for a microsoft teams channel

## Pipeline
```yaml
resource_types:
- name: teams-notification
  type: docker-image
  source:
    repository: nexeck/concourse-teams-resource
    tag: latest

resources:
- name: alert
  type: teams-notification
  source:
    url: <microsoft teams webhook url for channel>

jobs:
- name: teams-notification
  serial: true
  on_failure:
    do:
    - put: alert
      params:
        status: failure
  plan:
  - task: fail
    config:
      platform: linux
      image_resource:
        type: docker-image
        source:
          repository: alpine
      run:
        path: sh
        args:
        - -exc
        - |
          exit 1
```

