#!/bin/bash
INFLUENCERS=(
    "Abraham_Weintraub,AbrahamWeint"
    "Ailton_Benedito,AiltonBendito"
    "Alberto_Benett,Benett_"
    "Alexandre_Garcia,alexandregarcia"
    "Allan_dos_Santos,allanldsantos"
    "Ana_Paula_Henkel,AnaPaulaVolei"
    "Antonio_Prata,antonioprata" 
    "Arthur_do_Val,arthurmoledoval"
    "Arthur_Weintraub,ArthurWeint"
    "Atila_Iamarino,oatila"
    "Augusto_Nunes,augustosnunes"
    "Bia_Kicis,Biakicis"
    "Brunno_Melo,brunnomelocbn"
    "Caio_Coppolla,BoletimCoppolla"
    "Camila_Abdo,camila_abdo"
    "Carla_Zambelli,CarlaZambelli38"
    "Carlos_Bolsonaro,CarlosBolsonaro"
    "Carol_Pires,pirescarol"
    "Clarice_Falcao,euclarice" 
    "Claudio_Dantas,claudioedantas"
    "Claudio_Ferraz,claudferraz"
    "Conrado_Hubner,conradohubner"
    "Cristiana_Lobo,cristilobo"
    "Cristiano_Zanin_Martin,czmartins"
    "Cynara_Menezes,cynaramenezes"
    "Damares_Alves,DamaresAlves"
    "Danilo_Gentili,DaniloGentili"
    "Debora_Diniz,Debora_D_Diniz"
    "Deltan_Dallagnol,deltanmd"
    "Deltan_Dallagnol,deltanmd"
    "Douglas_Garcia,DouglasGarcia"
    "Eduardo_Bolsonaro,BolsonaroSP"
    "Eduardo_Moreira,eduardomoreira"
    "Eliane_Brum,brumelianebrum"
    "emicida,emicida"
    "Emir_Sader,emirsader"
    "Evaristo_Costa,evaristocosta"
    "Fabio_Talhari,fabiotalhari"
    "Felipe_Moura,FMouraBrasil"
    "Felipe_Neto,felipeneto"
    "Fernando_Holiday,FernandoHoliday"
    "Filipe_Altamir,filipealtamir"
    "Filipe_Martins,filgmartin"
    "Flavio_Bolsonaro,FlavioBolsonaro"
    "Flavio_Martins,sigaoflavio"
    "Flavio_VM_Costa,flaviovmcosta"
    "Gabriela_Prioli,GabrielaPrioli"
    "General_Heleno,gen_heleno" 
    "General_Villas_Boas,Gen_VillasBoas"
    "George_Marques,GeorgMarques"
    "Gilmar_Mendes,gilmarmendes"
    "Glenn_Greenwald,ggreenwald" 
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
    "Iza,IzaReal"
    "Jair M. Bolsonaro,jairbolsonaro"
    "Janaina_Paschoal,JanainaDoBrasil"
    "Jean_Wyllys,jeanwyllys_real"
    "Jesse_Souza,jessesouzaecht"
    "Joao_Carvalho,assimdisseojoao"
    "Joao_de_Andrade_Neto,jdeandradeneto"
    "Joao_Doria,jdoriajr"
    "Joao_Romero,joao_p_romero"
    "Joaquim_Barbosa,joaquimboficial"
    "Joaquin_Teixeira,JoaquinTeixeira"
    "Joel_Pinheiro,JoelPinheiro85"
    "Joice_Hasselmann,joicehasselmann"
    "Jones_Manoel,_makavelijones"
    "Jose_de_Abreu,zehdeabreu" 
    "Jose_Fernandes_Junior,JosFernandesJr2"
    "Jose_Roberto_Guzzo,jrguzzofatos"
    "Kim_Kataguiri,kimpkat"
    "Kim_Paim,kimpaim"
    "Laura_Carvalho,lauraabcarvalho"
    "Leo_Jaime,LeoJaime" 
    "Leo_Lins,LeoLins" 
    "Leonardo_Sakamoto,blogdosakamoto"
    "Liliane_Ventura,lilianeventura"
    "Lobao,lobaoeletrico"
    "Lola_Aronovich,lolaescreva"
    "Lucas_de_Aragao,LucasdeAragao"
    "Lucas_Paulino,lucasapaulino"
    "Luciano_Hang,luciano_hang"
    "Luciano_Huck,LucianoHuck"
    "Luis_Augusto_Simon,allansimon91"
    "Luis_Lacombe,luislacombereal"
    "Luis_Nassif,luisnassif"
    "Luis_Roberto_Barroso,LRobertoBarroso"
    "Luiz_Philippe_Braganca,lpbragancabr"
    "Lula_Falcao,lulafalcao"
    "Malu_Gaspar,malugaspar"
    "Marcelo_Adnet,MarceloAdnet" 
    "Marcelo_Bretas,mcbretas"
    "Marcelo_D2,Marcelodedois" 
    "Marcelo_Freixo,MarceloFreixo"
    "Marcelo_Lins,MarceloLins68"
    "Marcelo_Tas,mascelotas"
    "Marcia_Denser,mdenser"
    "Marcio_Porchmann,MarcioPochmann"
    "Marco_Antonio_Villa,VillaMarcovilla"
    "Marcos_Botelho,marcosbotelho"
    "Marcos_Mion,marcosmion"
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
    "Olavo_de_Carvalho,OdeCarvalho"
    "Olavo_de_Carvalho,opropriolavo"
    "Oscar_Filho,OscarFilho"
    "Osmar_Terra,OsmarTerra"
    "Palmerio_Doria,palmeriodoria"
    "Paulo_Coelho,paulocoelho"
    "Pedro_Bial,PBial"
    "Pedro_Menezes,p_dromenezes"
    "Portal_Terca_Livre,terca_livre"
    "Rachel_Sheherazade,RachelSherazade"
    "Rafinha_Bastos,rafinhabastos"
    "Rafinha_Bastos,rafinhabastos"
    "Reinaldo_Azevedo,reinaldoazevedo"
    "Renan_Santos,RenanSantosMBL"
    "Ricardo_Amorim,Ricamconsult"
    "Ricardo_Barboza,menezes_barboza"
    "Rodrigo_Constantino,Rconstantino"
    "Rodrigo_Janot,Rodrigo_Janot"
    "Rodrigo_Zeidan,rodzeidan"
    "Roger_Rocha_Moreira,roxmo"
    "Rubens_Valente,rubensvalente"
    "Sabrina_Fernandes,safbf"
    "Sergio_Camargo,sergiodireita1"
    "Sergio_Moro,SF_Moro"
    "Silas_Malafaia,PastorMalafaia"
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