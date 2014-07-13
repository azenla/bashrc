#!/bin/bash

DEBUG="false"

debug() {
  if [ ${DEBUG} == "true" ]
  then
    echo ${@}
  fi
}

include() {
  source ${@}
}

append_path() {
  export PATH="${PATH}:${@}"
}

prepend_path() {
  export PATH="${@}:${PATH}"
}

include /etc/profile

for FILE in $(find ${HOME}/.bash -type f)
do
  include ${FILE}
done
