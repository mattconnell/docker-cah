# I haven't tried this in newer versions of python. YMMV
FROM            python:2.7

# Set up virtualenv
RUN             apt-get update && apt-get install -qq --no-install-recommends virtualenv

# Create an environment,
# clone out the 'submodule',
# copy in your config,
# and do pip work.
RUN             virtualenv --distribute CAH && cd CAH && . bin/activate
RUN             git clone <git repo for CAH goes here> 
COPY            config.yml cah/src/config.yml
RUN             pip install -e cah

# Run twistd as documented.
CMD             cd cah/src && twistd -noy cah.tac

