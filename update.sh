#!/bin/bash
#
# Updates with latest release of VinceG/twitter-bootstrap-wizard
#
git clone git@github.com:VinceG/twitter-bootstrap-wizard.git

cp twitter-bootstrap-wizard/*.js Resources/js/
cp twitter-bootstrap-wizard/*.css Resources/css/
cp twitter-bootstrap-wizard/examples/* Resources/examples/

#fix examples
sed -i .tmp \
  -e 's/..\/bootstrap\/js\/bootstrap.min.js/http:\/\/maxcdn.bootstrapcdn.com\/bootstrap\/3.3.2\/js\/bootstrap.min.js/' \
  -e 's/..\/bootstrap\/css\/bootstrap.min.css/http:\/\/maxcdn.bootstrapcdn.com\/bootstrap\/3.3.2\/css\/bootstrap.min.css/' \
  -e 's/..\/jquery.bootstrap.wizard.js/..\/js\/jquery.bootstrap.wizard.js/' \
  -e 's/..\/prettify.js/..\/js\/prettify.js/' \
  -e 's/..\/prettify.css/..\/css\/prettify.css/' \
  Resources/examples/*.html
rm Resources/examples/*.tmp



rm -Rf twitter-bootstrap-wizard
