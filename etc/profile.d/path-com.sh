## /com/scripts

if [ -d /com/scripts/bin ]; then
  PATH="/com/scripts/bin:$PATH"
fi

if [ -d /com/scripts/sbin ]; then
  PATH="/com/scripts/sbin:$PATH"
fi

export PATH
