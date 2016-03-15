#!/bin/bash

for supdir in ./* ;do #root

if [[ -f "$supdir" ]]; then

#echo "IS A FILE, SKIPPING"
continue

fi

	
  supdirname="$(echo $supdir | cut -d '/' -f 2)"
  echo "SUPDIR $supdirname"
  	
  	#traverse in category ( eg. BEDS )

  	for catdir in "./$supdirname/*"; do

  		for image in $catdir/*.png; do

  			#process if there's atleast one png image
				 if [ "$image" != "$catdir/*.png" ]; then
			          echo "PROCESSING  $image, PLEASE WAIT"          
			          pngopti=$(curl -s https://api.tinify.com/shrink \
			          --user api:DcJNnLkyeohGMe9eSXSS0TExVsUD6y2v \
			          --data-binary @"$image" 
			          )

			          python ./pySon.py $pngopti "$image"
			          echo "PNG PROCESSED"
			         fi

  		done

  	done


done #end root loop

echo "ALL DONE !"