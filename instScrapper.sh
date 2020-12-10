#!/bin/bash
INFLUENCERS=(
    # "Alex_Silva,blogalexsilva"
    # "Alexandre_Garcia,alexandregarcia.br"
    # "Allan_dos_Santos,allansantosbr"
    # "Ana_Paula_Henkel,anapaulavolei"
    # "Arthur_do_Val,arthurmoledoval"
    # "Atila_Iamarino,oatila"
    # "Augusto_Nunes,augustosnunesoficial"
    # "Barbara_Zambaldi_Destefani,teatualizeioficial"
    # "Bernardo_Kuster,bernardopkuster"

    "Bia_Kicis,biakicis"
    "Brunno_Melo,brunnomelocbn"
    "Caio_Coppolla,boletimcoppolla"
    "Camila_Abdo,caabdo"
    "Carla_Zambelli,carla.zambelli"
    "Carlos_Bolsonaro,carlosbolsonaro"
    "Carol_Pires,pirescarol"
    "Claudio_Dantas,claudiodantassequeira"
    "Cristiana_Lobo,cristianalobo"
    "Cynara_Menezes,socialistamorena"
    "Damares_Alves,damaresalvesoficial1"
    "Danilo_Gentili,danilogentili"
    "Debora_Diniz,debora_d_diniz"
    "Deltan_Dallagnol,deltandallagnol"
    "Eduardo_Bolsonaro,bolsonarosp"
    "Eduardo_Moreira,eduardomoreirareal"
    "Eliane_Brum,brumelianebrum"
    "Fabio_Talhari,vidadestra"
    "Felipe_Moura,felipemourabrasil"
    "Felipe_Neto,felipeneto"
    "Fernando_Holiday,fernandoholiday"
    "Filipe_Altamir,filipealtamir"
    "Filipe_Martins,filgmartin"
    "Flavio_Bolsonaro,flaviobolsonaro"
    "Flavio_Martins,sigaoflavio"
    "Gregorio_Duvivier,gduvivier"
    "Guga_Chacra,gugachacra"
    "Guilherme_Fiuza,guilhermefiuzaoficial"
    "Guilherme_Macalossi,guilhermemacalossi"
    "Gustavo_Nogy,gustavonogy"
    "Hamilton_Mourao,vprhamiltonmourao"
    "Hildegard_Angel,blogdahilde"
    "Jair_Bolsonaro,jairmessiasbolsonaro"
    "Janaina_Paschoal,janainacpaschoal"
    "Jean_Wyllys,jeanwyllys_real"
    "Jesse_Souza,jesse_souza1960"
    "Joao_Carvalho,assimdisseojoao"
    "Joao_Doria,jdoriajr"
    "Joel_Pinheiro,joelpinheiro85"
    "JoiceHasselmann,joicehasselmannoficial"
    "Jones_Manoel,jones.manoel"
    "Jose_Fernandes_Junior,portaldojose"
    "Jose_Roberto_Guzzo,jrguzzofatos"
    "Kim_Kataguiri,kimkataguiri"
    "Kim_Paim,kimpaim"
    "Laura_Carvalho,laurabdecarvalho"
    "Leonardo_Sakamoto,leosakamoto"
    "Liliane_Ventura,lilianeventuraoficial"
    "Lobao,lobaow"
    "Lucas_de_Aragao,lucasdearagao"
    "Lucas_Paulino,lucasapaulino"
    "Luciano_Hang,luciano.hang"
    "Luciano_Huck,lucianohuck"
    "Luis_Augusto_Simon,blogdomenon"
    "Luis_Nassif,jornalggn"
    "Luiz_Philippe_Braganca,lpbragancabr"
    "Marcelo_Freixo,marcelofreixo"
    "Marcia_Denser,marciadenser"
    "Marco_Antonio_Villa,marcoantoniovillaoficial"
    "Marcos_Botelho,marcosbotelho"
    "Matheus_Hector,matheushector"
    "Mauricio_Bunazar,profbunazar"
    "Milton_Neves,miltonneves"
    "Monica_Bergamo,monica_bergamo"
    "Nando_Moura,nandomoura_oficial_101"
    "Nathalia_Rodrigues,nathfinancas"
    "Nildo_Ouriques,nildopsol"
    "Octavio_Guedes,ocguedes"
    "Olavo_de_Carvalho,opropriolavodecarvalho"
    "Osmar_Terra,terra.osmar"
    "Pedro_Menezes,p_dromenezes"
    "Rachel_Sheherazade,rachelsherazade"
    "Rafinha_Bastos,rafinhabastos"
    "Reinaldo_Azevedo,reinaldoazevedo.com.br"
    "Renan_Santos,renansantosmbl"
    "Ricardo_Amorim,ricamorim"
    "Rodrigo_Constantino,rodrigoconstantino1976"
    "Roger_Rocha_Moreira,roxmo"
    "Rubens_Valente,rubensvalente"
    "Sabrina_Fernandes,teseonze"
    "Sergio_Camargo,sergiodireita"
    "Sergio_Moro,sf_moro"
    "Silvio_Almeida,silviolual"
    "Silvio_Grimaldo,silviogrimaldo"
    "Tiago_Luis_Pavinatto,pavinatto"
    "Tome_Abduch,tome_abduch"
    "Vera_Magalhaes,veramagalhaesjornalista"
    "Virginia,mulhertamarinda"
    "Winston_Ling,WinstonLing"
    "Xico_Sa,xicosa"

    # "Abraham_Weintraub,abrahamweintraub"
    # "Arthur_Weintraub,arthurweint"
    # "Clarice_Falcao,clarafalcao" 
    # "Cristiano_Zanin_Martin,cristianozaninmartins"
    # "Deltan_Dallagnol,deltandallagnol"    
    # "Douglas_Garcia,douglasgarciaspc"
    # "Evaristo_Costa,evaristocostaoficial"
    # "Gabriela_Prioli,gabrielaprioli"
    # "General_Heleno,genheleno" 
    # "Glenn_Greenwald,glenn.11.greenwald" 
    # "Iza,iza"
    # "Joaquin_Teixeira,joaquimteixeiraoficialc"
    # "Jose_de_Abreu,josedeabreu" 
    # "Leo_Jaime,leojaimeoficial" 
    # "Leo_Lins,leolins" 
    # "Luis_Lacombe,luis.lacombe"
    # "Luis_Roberto_Barroso,lrobertobarroso"
    # "Marcelo_Adnet,marceloadnet0" 
    # "Marcelo_Bretas,mcbretas"
    # "Marcelo_D2,marcelod2" 
    # "Marcelo_Tas,marcelotas"
    # "Marcos_Mion,marcosmion"
    # "Olavo_de_Carvalho,opropriolavodecarvalho"
    # "Oscar_Filho,oscarfilho"
    # "Paulo_Coelho,paulocoelho"
    # "Pedro_Bial,pedrobial"
    # "Rafinha_Bastos,rafinhabastos"
    # "Silas_Malafaia,silasmalafaia"
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
    echo data/$INFLUENCER/instagram
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
