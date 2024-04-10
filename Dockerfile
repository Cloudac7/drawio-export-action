FROM rlespinasse/drawio-export:v4.17.0
ENV LANG zh_CN.UTF-8
RUN apt-get update && apt-get install --no-install-recommends -y git=1:2.30.2-1+deb11u2 && rm -rf /var/lib/apt/lists/*
COPY src/* /opt/drawio-export-action/
COPY fonts.conf /etc/fonts/local.conf
RUN fc-cache
ENV DRAWIO_DESKTOP_RUNNER_COMMAND_LINE "/opt/drawio-export-action/runner.sh"
