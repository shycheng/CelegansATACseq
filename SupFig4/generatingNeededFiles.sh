# This is just an example of what was done
intersectBed -a <single bp score bedGraph> -b <region of interest bed> | \
coverageBed -a - -b <region of interest bed> | \
awk '{if($NF > 0.5) print $0}' | \
sortBed -i - | \
mapBed -a - -b <single bp score bedGraph> -c 4 -o mean  
