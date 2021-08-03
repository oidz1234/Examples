#!/bin/bash
to="YOUR_EMAIL_ADDRESS"
from="Server Notif<YOUR_FROM_ADDRESS>"
subject="Daily server report!"

uptime="$(uptime)"
free_space="$(df -h | grep "sda1" | awk '{print $5}')"
top_mem="$(ps aux --sort=-%mem | awk 'NR<=10{print $0}')"
top_cpu="$(ps aux --sort=-%cpu | awk 'NR<=10{print $0}')"
quote="$(curl -s -X GET "https://api.quotable.io/random"  | jq '.content, .author')"

mailx -r "$from" -s "$subject" "$to" <<-EOF
----UPTIME----
"$uptime"


----SPACE FREE----
"$free_space"

----TOP CPU PROCESSES----
"$top_cpu"

----TOP MEM PROCESSES----
"$top_mem"


"----END----"

"$quote"

Have a nice day today!

EOF

