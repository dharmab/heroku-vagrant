include:
  - ruby

heroku_toolbelt:
  cmd.script:
    - source: 'https://toolbelt.heroku.com/install.sh'
    - user: vagrant
    - unless: "[ -f /usr/local/heroku/bin/heroku ]"
  file.managed:
    - name: /etc/profile.d/heroku.sh
    - contents: 'PATH="$PATH:/usr/local/heroku/bin"'
