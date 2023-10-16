#!/bin/bash

# Make sure $SCRIPT_NAME is set appropriately
SCRIPT_NAME="${0##*/}"

function error()
{
  echo >&2 "$SCRIPT_NAME: error:" "$@"
}

function die()
{
  error "$@"
  exit 1
}

##
# vim: ts=2 sw=2 et fdm=marker :
##
