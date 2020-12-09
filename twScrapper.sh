#!/bin/bash
INFLUENCERS=(
    "Alberto_Benett,Benett_"
    "Alexandre_Garcia,alexandregarcia"
    "Allan_dos_Santos,allanldsantos"
    "Ana_Paula_Henkel,AnaPaulaVolei"
    "Arthur_do_Val,arthurmoledoval"
    "Atila_Iamarino,oatila"
    "Augusto_Nunes,augustosnunes"
    "Bia_Kicis,Biakicis"
    "Brunno_Melo,brunnomelocbn"
    "Caio_Coppolla,BoletimCoppolla"
    "Camila_Abdo,camila_abdo"
    "Carla_Zambelli,CarlaZambelli38"
    "Carlos_Bolsonaro,CarlosBolsonaro"
    "Carol_Pires,pirescarol"
    "Claudio_Dantas,claudioedantas"
    "Claudio_Ferraz,claudferraz"
    "Conrado_Hubner,conradohubner"
    "Cristiana_Lobo,cristilobo"
    "Cynara_Menezes,cynaramenezes"
    "Damares_Alves,DamaresAlves"
    "Danilo_Gentili,DaniloGentili"
    "Debora_Diniz,Debora_D_Diniz"
    "Deltan_Dallagnol,deltanmd"
    "Eduardo_Bolsonaro,BolsonaroSP"
    "Eduardo_Moreira,eduardomoreira"
    "Eliane_Brum,brumelianebrum"
    "emicida,emicida"
    "Emir_Sader,emirsader"
    "Fabio_Talhari,fabiotalhari"
    "Felipe_Moura,FMouraBrasil"
    "Felipe_Neto,felipeneto"
    "Fernando_Holiday,FernandoHoliday"
    "Filipe_Altamir,filipealtamir"
    "Filipe_Martins,filgmartin"
    "Flavio_Bolsonaro,FlavioBolsonaro"
    "Flavio_Martins,sigaoflavio"
    "Flavio_VM_Costa,flaviovmcosta"
    "General_Villas_Boas,Gen_VillasBoas"
    "George_Marques,GeorgMarques"
    "Gregorio_Duvivier,gduvivier"
    "Guga_Chacra,gugachacra"
    "Guilherme_Caetano,guiicaetano"
    "Guilherme_Fiuza,gfiuza_oficial"
    "Guilherme_Macalossi,gtmacalossi"
    "Gustavo_Nogy,gustavonogy"
    "Gustavo_Victorino,victorinogustav"
    "Hamilton_Mourao,GeneralMourao"
    "Hildegard_Angel,hilde_angel"
    "Igor_Natusch,igornatusch"
    "Jair M. Bolsonaro,jairbolsonaro"
    "Janaina_Paschoal,JanainaDoBrasil"
    "Jean_Wyllys,jeanwyllys_real"
    "Jesse_Souza,jessesouzaecht"
    "Joao_Carvalho,assimdisseojoao"
    "Joao_de_Andrade_Neto,jdeandradeneto"
    "Joao_Doria,jdoriajr"
    "Joao_Romero,joao_p_romero"
    "Joel_Pinheiro,JoelPinheiro85"
    "Joice_Hasselmann,joicehasselmann"
    "Jones_Manoel,_makavelijones"
    "Jose_Fernandes_Junior,JosFernandesJr2"
    "Jose_Roberto_Guzzo,jrguzzofatos"
    "Kim_Kataguiri,kimpkat"
    "Kim_Paim,kimpaim"
    "Laura_Carvalho,lauraabcarvalho"
    "Leonardo_Sakamoto,blogdosakamoto"
    "Liliane_Ventura,lilianeventura"
    "Lobao,lobaoeletrico"
    "Lola_Aronovich,lolaescreva"
    "Lucas_de_Aragao,LucasdeAragao"
    "Lucas_Paulino,lucasapaulino"
    "Luciano_Hang,luciano_hang"
    "Luciano_Huck,LucianoHuck"
    "Luis_Augusto_Simon,allansimon91"
    "Luis_Nassif,luisnassif"
    "Luiz_Philippe_Braganca,lpbragancabr"
    "Lula_Falcao,lulafalcao"
    "Malu_Gaspar,malugaspar"
    "Marcelo_Freixo,MarceloFreixo"
    "Marcelo_Lins,MarceloLins68"
    "Marcia_Denser,mdenser"
    "Marcio_Porchmann,MarcioPochmann"
    "Marco_Antonio_Villa,VillaMarcovilla"
    "Marcos_Botelho,marcosbotelho"
    "Mariana_Brito_Soares,marianabritosl"
    "Matheus_Hector,mathector"
    "Mauricio_Bunazar,profbunazar"
    "May_Almeida,mayrannealmeida"
    "Milton_Neves,Miltonneves"
    "Miriam_Leitao,miriamleitao"
    "Modesto_Carvalhosa,CarvalhosaMo"
    "Monica_Bergamo,monicabergamo"
    "Nando_Moura,moura_101"
    "Nildo_Ouriques,nildoouriques"
    "Octavio_Guedes,octavio_guedes"
    "Olavo_de_Carvalho,opropriolavo"
    "Osmar_Terra,OsmarTerra"
    "Palmerio_Doria,palmeriodoria"
    "Pedro_Menezes,p_dromenezes"
    "Portal_Terca_Livre,terca_livre"
    "Rachel_Sheherazade,RachelSherazade"
    "Rafinha_Bastos,rafinhabastos"
    "Reinaldo_Azevedo,reinaldoazevedo"
    "Renan_Santos,RenanSantosMBL"
    "Ricardo_Amorim,Ricamconsult"
    "Ricardo_Barboza,menezes_barboza"
    "Rodrigo_Constantino,Rconstantino"
    "Rodrigo_Zeidan,rodzeidan"
    "Roger_Rocha_Moreira,roxmo"
    "Rubens_Valente,rubensvalente"
    "Sabrina_Fernandes,safbf"
    "Sergio_Camargo,sergiodireita1"
    "Sergio_Moro,SF_Moro"
    "Silvio_Almeida,silviolual"
    "Silvio_Grimaldo,silviogrimaldo"
    "Tiago_Luis_Pavinatto,pavinatto"
    "Tome_Abduch,Tomeabduch"
    "Vera_Magalhaes,veramagalhaes"
    "William_Bonner,realwbonner"
    "Winston_Ling,WinstonLing"
    "Xico_Sa,xicosa"
)
YEAR=$1
SINCE="$YEAR-01-01"
UNTIL="$YEAR-12-31"

FORMAT="[{date}; {user.username}; {content}; {replyCount}; {retweetCount}; {likeCount}; {quoteCount}; {url}; {retweetedTweet}; {quotedTweet}"

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
    echo data/$INFLUENCER/twitter
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