#!/bin/bash
INFLUENCERS=(
    "Alex_Silva,blogalexsilva"
    "Alexandre_Garcia,alexandregarcia.br"
    "Allan_dos_Santos,allansantosbr"
    "Ana_Paula_Henkel,anapaulavolei"
    "Arthur_do_Val,arthurmoledoval"
    "Atila_Iamarino,oatila"
    "Augusto_Nunes,augustosnunesoficial"
    "Barbara_Zambaldi_Destefani,teatualizeioficial"
    "Bernardo_Kuster,bernardopkuster"
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
)

YEAR="2020"

FORMAT="[{date}; {username}; {content}; {cleanUrl}; {likes}; {comments}]"
SINCE="$YEAR-01-01"
UNTIL="$YEAR-12-31"

OLDIFS=$IFS
IFS=','
for i in "${INFLUENCERS[@]}" 
do 
    set -- $i
    echo getting $1 instagram posts
    path=data/$1/instagram
    mkdir -p $path
    outfilename=$path/$2-instagram.txt
    snscrape -f $FORMAT --since "$YEAR-02-01" instagram-user $2 > $outfilename
done 
IFS=$OLDIFS

# snscrape --jsonl --since "2020-01-01" instagram-user erickmorenoma > erickmorenoma.txt
