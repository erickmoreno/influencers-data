#!/bin/bash
INFLUENCERS=(
    # "Samuel_Garcia,samuelgarcias"
    # "La_Doctora_Ilse,ladoctorailse"
    # "Dr._Vic,doctorvicoficial"
    # "Patricia_Navidad,patricianavidad"
    # "Laura_Zapata,laurazapataoficial"
    # "Capi_Perez,elcapiperez"
    "Danna_Paola,dannapaola"
    "Belinda,belinda"
    "Kunno,papikunno"
    "Kimberly_Loaiza,kimberly.loaiza"
    "Luisito_Comunica,luisitocomunica"
    "Chumel_Torres,chumeltorres"
)

YEAR=$1
SINCE="$YEAR-01-01"
UNTIL="$YEAR-12-31"
#      "[{date}; {user.username}; {content}; {likeCount}; {replyCount}; {retweetCount}; {quoteCount}; {url}; {retweetedTweet}; {quotedTweet}"
FORMAT="[{date}; {username}; {content}; {likes}; {comments}; ; ; {cleanUrl}"

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
    echo data-mx/$INFLUENCER/instagram
}

#full file path
output_filename () {
    echo $(data_path)/$USERNAME-instagram-$YEAR
}

scrap_instagram () {
    echo getting $INFLUENCER $YEAR insta posts
    mkdir -p $(data_path)
    snscrape -f $FORMAT --since "$SINCE" instagram-user $USERNAME > $(output_filename).txt
}

OLDIFS=$IFS
IFS=','
for i in "${INFLUENCERS[@]}" 
do 
    set -- $i
    INFLUENCER=$1
    USERNAME=$2
    scrap_instagram
    format_output_file
done 
IFS=$OLDIFS



# tr "\n" " " < data/Xico_Sa/instagram/xicosa-instagram.txt > tmp.txt
# sed 's/\s\[2020/\n[2020/g' tmp.txt > tmp2.txt

# snscrape --jsonl --since "2020-01-01" instagram-user erickmorenoma > erickmorenoma.txt
# snscrape --jsonl --with-entity --max-results 1 instagram-user erickmorenoma > followInsta.txt 

# snscrape --jsonl --with-entity --max-results 0 instagram-user erickmorenoma > followInsta.txt
