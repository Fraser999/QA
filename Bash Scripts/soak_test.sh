#!/bin/bash

((count=0))
((failurec=0))
((perc=0))
while(true)
do
  ((count=count+1))
  ./<INSERT TEST HERE>
  if [ $? -ne 0 ]
  then
    ((failurec=failurec+1))
  fi
  ((perc = 100*failurec/count))
  echo "Failed $failurec times out of $count ($perc perc)" 
  #sleep 30
done

echo "======================================"
echo "Failed $failurec times out of $count ($perc perc)"
