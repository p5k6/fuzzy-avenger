#!/bin/bash
EMAILS=
bash get_compliment.sh | mutt -F my_mutt.rc -s "Today's Compliment: $(date)"  -- $EMAILS
