from ubuntu:18.04
WORKDIR /tmp
RUN  apt-get update \
  && apt-get install -y wget
run apt-get install gnupg2 -y
run wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
run dpkg -i erlang-solutions_1.0_all.deb
run apt-get update
run apt-get install esl-erlang -y
run apt-get install elixir -y
run mix local.hex
