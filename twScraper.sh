#!/bin/bash
INFLUENCERS=(
    "Jair_Bolsonaro,jairbolsonaro"
)
YEAR=$1
SINCE="$YEAR-01-01"
UNTIL="$YEAR-12-31"

FORMAT="[{date}; {user.username}; {content}; {likeCount}; {replyCount}; {retweetCount}; {quoteCount}; {url}; {retweetedTweet}; {quotedTweet}"

#Converts miltiline content to single line
format_output_file () {
    filename=$(output_filename).txt
    temp=$(output_filename)-tmp.txt

    echo formating $(output_filename)
    tr "\n" " " < $filename > $temp # Remove new lines
    sed -e "s/^\[//g" -e "s/\s\[$YEAR/\n$YEAR/g" $temp > $filename #Insert new lines only for new content
    rm $temp
}

#Path to data
data_path () {
    echo data-mx/$INFLUENCER/twitter
}

#full file path
output_filename () {
    echo $(data_path)/$USERNAME-twitter-$YEAR
}

scrap_twitter () {
    echo getting $INFLUENCER $YEAR tweets
    mkdir -p $(data_path)
    snscrape -f $FORMAT twitter-search "from:$USERNAME since:$SINCE until:$UNTIL" > $(output_filename).txt
}

# MAIN
OLDIFS=$IFS
IFS=','
for i in "${INFLUENCERS[@]}" 
do 
    set -- $i
    INFLUENCER=$1
    USERNAME=$2
    scrap_twitter
    format_output_file
done 
IFS=$OLDIFS

# snscrape --jsonl twitter-search "from:gugachacra since:2020-08-01 until:2020-12-01" > testeFormat.txt

    # {replyCount}; {retweetCount}; {likeCount}; {quoteCount}; 