# docker-rails-ember [![Circle CI](https://circleci.com/gh/joshbeitler/docker-rails-ember.svg?style=svg)](https://circleci.com/gh/joshbeitler/docker-rails-ember)

> The most complete and functional setup for containerized Rails apps with
Ember front-ends.

## Installation

You will need to have a few things installed for this to work properly.

- Docker and Compose. Note that if you are on OS X or Windows setting these up
will be different than on Linux. I highly recommend
[Kitematic](https://kitematic.com/) for this.
- Some sort of HTML viewing apparatus

Once you have Docker, clone down the latest stable copy of this source.

```shell
$ git clone git@github.com:joshbeitler/docker-rails-ember.git
```

Next, you need to set up a `.env.web` file to store any sensitive information
that Rails might need, such as API keys or secret keys. This is excluded from
Git for a reason!

```
PORT=3000
MIN_THREADS=4
MAX_THREADS=16
SECRET_KEY_BASE= [...]
```

After that, you should be golden. Note that building the `web` and `ember`
containers will take a little while, so grab some coffee and get comfy.

```shell
$ docker-compose build
$ docker-compose up
```

Once all the containers are up and running, you can proceed like normal. Ember
is served on port `4200` of the container, and the API is served on port `3000`.

If you want to be cool, you can add the Docker container to your hosts file so
that you don't need to enter in the IP, but this is entirely up to you.

## Goodies

- Ember uses EmberCLI and Ember Data.
- Includes Sass, Bourbon, Neat, and Bitters.
- Uses the fantastic Ionicons icon library.
- Includes a few example components.
- Rails has Devise, Active Admin, and a full test suit already set up.
- Postgres used for database - no setup required.

## License

```
Copyright 2015 Joshua Beitler

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
