du  data_* |awk 'BEGIN{count=0;size=0;} \
     {size = size + $1/1024;} \
     END{print "Total size " size/1024 " GB" ; }'
