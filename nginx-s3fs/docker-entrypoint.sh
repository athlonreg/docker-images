#!/bin/sh

if [ -n "${URL}" ] ; then
  /usr/bin/s3fs "${BUCKET:-icenter}" "${DIR:-/mnt/icenter}" -o passwd_file="${PASSWORD_FILE:-/root/.passwd-s3fs}" -o url="${URL:-http://127.0.0.1:9000}" -o umask=000 -o allow_other,nonempty,no_check_certificate,use_path_request_style > /dev/null 2>&1
	echo "BUCKET ${BUCKET:-icenter} MOUNTED."
fi

exec "$@"
