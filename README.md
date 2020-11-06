# CT Election Data

> An archive of data scraped from the State of Connecticut's election night
> reporting system.

## 2020 Data status

2020 data is marked as complete but unofficial

## What's in this repo

In this folder:

- election-list.csv is a list of elections. Note the ID of any you're interested
  in
- archive-all.sh is a bash script to update this archive

In the archive folder, there are a bunch of numbered folders. Each number is an ID from election-list.csv. Each folder contains:

- results.csv - A spreadsheet that contains statewide and town-level results for each race. Note, that even if a race is not a statewide race, if it includes multiple towns, such as a congressional district, you will need to look at the statewide total for a candidate's actual total, and individual towns to see how they did in each town.
- raw.json - data directly pulled from the state's server. This has a lot more data than results.csv, including things like ballot questions and percent of each town and precinct reporting.
- more numbered folders - each numbered folder is a "version" of the data, an arbitrary serial number from the state's server. These versions are snapshots, so they are important while the data is still rolling in. For older elections, they should be pretty stable.

## Where it comes from

Using the ct-election-runner tool I open-sourced here:
[https://github.com/jakekara/ct-election-runner](https://github.com/jakekara/ct-election-runner)

## Data caveats

You should get this data from the state, AP, or other sources. This just gives
it to you in a format that might be more useful, and more granular. In other
words, it's kind of for people know what they're doing with it and also
understand how vet it.

This is data that I've scraped from the state's system. So, fresh data for a
recent election is generally labeled as unofficial until the vote is certified.
Mistakes happen in the actual counting or reporting that could cause changes in
the final results. Secondly, my code scrapes this data then reformats it into
handy spreadshseets. It's possible that the code that reformats it is screwed
up. It's all open-sourced, so anyone who finds mistakes can fix them! The JSON
files are "raw" concatenations of exactly as they come from the state's server,
so they include a lot more data than my summary CSV files, and they don't risk
being mangled by any code I've written.
