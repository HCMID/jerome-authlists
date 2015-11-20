#!/bin/sh
PERL=`which perl`
SORT=`which sort`
TAIL=`which tail`


MAX=`$PERL -pe 's/,.+//' orthoequivs.csv | $PERL -pe 's/urn:cite:hcmid:jerpers.//' - | $SORT -n | $TAIL -1`

echo Highest assigned id = urn:cite:hcmid:jerpers.$MAX
