# get election list
ctrunner download -l | ctrunner parse --data-type=election-list > election-list.csv

# iterate through each election id and archive each election
for ID in `awk -F, '{print $1}' election-list.csv | tail -n +2`;
do
    echo Archiving Election: $ID
    ctrunner archive --dest archive --election $ID
done