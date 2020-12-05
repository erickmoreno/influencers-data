#!/bin/bash
INFLUENCERS=(
    "Jesse_Souza,jessesouzaecht"
    "Jose_Fernandes_Junior,JosFernandesJr2"
    "Guga_Chacra,gugachacra"
    "Eduardo_Moreira,eduardomoreira"
    "Vera_Magalhaes,veramagalhaes"
    "Hildegard_Angel,hilde_angel"
    "Jones_Manoel,_makavelijones"
    "Cynara_Menezes,cynaramenezes"
    "Silvio_Almeida,silviolual"
    "Joao_de_Andrade_Neto,jdeandradeneto"
    "Rachel_Sheherazade,RachelSherazade"
    "Claudio_Ferraz,claudferraz"
    "Emir_Sader,emirsader"
    "Guilherme_Caetano,guiicaetano"
    "Palmerio_Doria,palmeriodoria"
    "Flavio_VM_Costa,flaviovmcosta"
    "Marcia_Denser,mdenser"
    "Conrado_Hubner,conradohubner"
    "Gustavo_Nogy,gustavonogy"
    "Guilherme_Macalossi,gtmacalossi"
    "Brunno_Melo,brunnomelocbn"
    "Claudio_Dantas,claudioedantas"
    "Carol_Pires,pirescarol"
    "Felipe_Neto,felipeneto"
    "Xico_Sa,xicosa"
    "Rodrigo_Zeidan,rodzeidan"
    "Luis_Augusto_Simon,allansimon91"
    "Marco_Antonio_Villa,VillaMarcovilla"
    "Lucas_Paulino,lucasapaulino"
    "Igor_Natusch,igornatusch"
    "Joao_Carvalho,assimdisseojoao"
    "Sabrina_Fernandes,safbf"
    "Pedro_Menezes,p_dromenezes"
    "Joel_Pinheiro,JoelPinheiro85"
    "Lula_Falcao,lulafalcao"
    "George_Marques,GeorgMarques"
    "Lucas_de_Aragao,LucasdeAragao"
    "Matheus_Hector,mathector"
    "Renan_Santos,RenanSantosMBL"
    "Alberto_Benett,Benett_"
    "Joao_Romero,joao_p_romero"
    "Laura_Carvalho,lauraabcarvalho"
    "Flavio_Martins,sigaoflavio"
    "Marcos_Botelho,marcosbotelho"
    "Nildo_Ouriques,nildoouriques"
    "Tiago_Luis_Pavinatto,pavinatto"
    "Rubens_Valente,rubensvalente"
    "Luis_Nassif,luisnassif"
    "Malu_Gaspar,malugaspar"
    "Cristiana_Lobo,cristilobo"
    "Monica_Bergamo,monicabergamo"
    "Marcelo_Lins,MarceloLins68"
    "Ricardo_Barboza,menezes_barboza"
    "Octavio_Guedes,octavio_guedes"
    "Rodrigo_Constantino,Rconstantino"
    "Kim_Paim,kimpaim"
    "Fabio_Talhari,fabiotalhari"
    "Liliane_Ventura,lilianeventura"
    "Milton_Neves,Miltonneves"
    "Mariana_Brito_Soares,marianabritosl"
    "Mauricio_Bunazar,profbunazar"
    "Winston_Ling,WinstonLing"
    "Camila_Abdo,camila_abdo"
    "Guilherme_Fiuza,gfiuza_oficial"
    "Silvio_Grimaldo,silviogrimaldo"
    "Felipe_Moura,FMouraBrasil"
    "May_Almeida,mayrannealmeida"
    "Gustavo_Victorino,victorinogustav"
    "Roger_Rocha_Moreira,roxmo"
    "Tome_Abduch,Tomeabduch"
    "Filipe_Altamir,filipealtamir"
    "Atila_Iamarino,oatila"
    "Debora_Diniz,Debora_D_Diniz"
    "Lola_Aronovich,lolaescreva"
    "Eliane_Brum,brumelianebrum"
    "Leonardo_Sakamoto,blogdosakamoto"
    "Marcio_Porchmann,MarcioPochmann"
    "Jean_Wyllys,jeanwyllys_real"
    "William_Bonner,realwbonner"
    "Miriam_Leitao,miriamleitao"
    "Danilo_Gentili,DaniloGentili"
    "Alexandre_Garcia,alexandregarcia"
    "Modesto_Carvalhosa,CarvalhosaMo"
    "Caio_Coppolla,BoletimCoppolla"
    "Allan_dos_Santos,allanldsantos"
    "Portal_Terca_Livre,terca_livre"
    "General_Villas_Boas,Gen_VillasBoas"
    "Luciano_Hang,luciano_hang"
    "Filipe_Martins,filgmartin"
)
YEAR=2020

FORMAT="[{date}; {user.username}; {content}; {replyCount}; {retweetCount}; {likeCount}; {quoteCount}; {url}; {retweetedTweet}; {quotedTweet}]"
SINCE="$YEAR-01-01"
UNTIL="$YEAR-12-31"

#mapfile -t tAccounts < $1
OLDIFS=$IFS
IFS=','
#for i in "${tAccounts[@]}" 
for i in "${INFLUENCERS[@]}" 
do 
    set -- $i
    echo getting $1 tweets
    path=data/$1/twitter
    mkdir -p $path
    snscrape -f $FORMAT twitter-search "from:$2 since:$SINCE until:$UNTIL" > $path/$2-twitter-$YEAR.txt
done 
IFS=$OLDIFS

# snscrape --jsonl twitter-search "from:gugachacra since:2020-08-01 until:2020-12-01" > testeFormat.txt

    # {replyCount}; {retweetCount}; {likeCount}; {quoteCount}; 

# declare -A pairs=(
#   [c]=3
#   [e]=5
# )
# for key in "${!pairs[@]}"; do
#   value="${pairs[$key]}"
#   echo "key is $key and value is $value"
# done