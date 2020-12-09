INFO() {
  echo -e "[\e[1;34mINFO\e[0m] [\e[1;35m${COMPONENT}\e[0m] [\e[1;36m$(date '+%F %T')\e[0m] $1"
}

SUCC() {
  echo -e "[\e[1;32mSUCC\e[0m] [\e[1;35m${COMPONENT}\e[0m] [\e[1;36m$(date '+%F %T')\e[0m] $1"
}

FAIL() {
  echo -e "[\e[1;31mFAIL\e[0m] [\e[1;35m${COMPONENT}\e[0m] [\e[1;36m$(date '+%F %T')\e[0m] $1"
}

LOG_FILE=/tmp/roboshop.log

## Verify User is root or not
USER_ID=$(id -u)
case $USER_ID in
  0)
    true ## Nothing to perform so we choosen true
    ;;
  *)
    echo -e "\e[1;31m You should be a root user to perform this script\e[0m"
    exit 1
    ;;
esac
