#!/bin/bash
INFLUENCERS=(
    "Jesse_Souza,jesse_souza1960"
    "Jose_Fernandes_Junior,portaldojose"
    "Guga_Chacra,gugachacra"
    "Nathalia_Rodrigues,nathfinancas"
    "Eduardo_Moreira,eduardomoreirareal"
    "Vera_Magalhaes,veramagalhaesjornalista"
    "Hildegard_Angel,blogdahilde"
    "Jones_Manoel,jones.manoel"
    "Cynara_Menezes,socialistamorena"
    "Silvio_Almeida,silviolual"
    "Rachel_Sheherazade,rachelsherazade"
    "Marcia_Denser,marciadenser"
    "Gustavo_Nogy,gustavonogy"
    "Guilherme_Macalossi,guilhermemacalossi"
    "Brunno_Melo,brunnomelocbn"
    "Claudio_Dantas,claudiodantassequeira"
    "Carol_Pires,pirescarol"
    "Felipe_Neto,felipeneto"
    "Xico_Sa,xicosa"
    "Luis_Augusto_Simon,blogdomenon"
    "Marco_Antonio_Villa,marcoantoniovillaoficial"
    "Lucas_Paulino,lucasapaulino"
    "Joao_Carvalho,assimdisseojoao"
    "Sabrina_Fernandes,teseonze"
    "Pedro_Menezes,p_dromenezes"
    "Joel_Pinheiro,joelpinheiro85"
    "Lucas_de_Aragao,lucasdearagao"
    "Matheus_Hector,matheushector"
    "Renan_Santos,renansantosmbl"
    "Virginia,mulhertamarinda"
    "Laura_Carvalho,laurabdecarvalho"
    "Flavio_Martins,sigaoflavio"
    "Marcos_Botelho,marcosbotelho"
    "Nildo_Ouriques,nildopsol"
    "Tiago_Luis_Pavinatto,pavinatto"
    "Rubens_Valente,rubensvalente"
    "Luis_Nassif,jornalggn"
    "Alex_Silva,blogalexsilva"
    "Cristiana_Lobo,cristianalobo"
    "Monica_Bergamo,monica_bergamo"
    "Octavio_Guedes,ocguedes"
    "Rodrigo_Constantino,rodrigoconstantino1976"
    "Barbara_Zambaldi_Destefani,teatualizeioficial"
    "Kim_Paim,kimpaim"
    "Fabio_Talhari,vidadestra"
    "Liliane_Ventura,lilianeventuraoficial"
    "Milton_Neves,miltonneves"
    "Mauricio_Bunazar,profbunazar"
    "Winston_Ling,WinstonLing"
    "Camila_Abdo,caabdo"
    "Guilherme_Fiuza,guilhermefiuzaoficial"
    "Silvio_Grimaldo,silviogrimaldo"
    "Felipe_Moura,felipemourabrasil"
    "Roger_Rocha_Moreira,roxmo"
    "Tome_Abduch,tome_abduch"
    "Filipe_Altamir,filipealtamir"
    "Atila_Iamarino,oatila"
    "Debora_Diniz,debora_d_diniz"
    "Eliane_Brum,brumelianebrum"
    "Leonardo_Sakamoto,leosakamoto"
    "Jean_Wyllys,jeanwyllys_real"
    "Danilo_Gentili,danilogentili"
    "Alexandre_Garcia,alexandregarcia.br"
    "Caio_Coppolla,boletimcoppolla"
    "Allan_dos_Santos,allansantosbr"
    "Luciano_Hang,luciano.hang"
    "Filipe_Martins,filgmartin"
)
YEAR=$1

FORMAT="[{date}; {username}; {content}; {cleanUrl}]"
SINCE="$YEAR-01-01"
UNTIL="$YEAR-12-31"

OLDIFS=$IFS
IFS=','
for i in "${INFLUENCERS[@]}" 
do 
    set -- $i
    echo getting $1 instagram posts
    path=$1/instagram
    mkdir -p $path
    outfilename=$path/$2-instagram.txt
    snscrape -f $FORMAT instagram-user $2 > $outfilename
done 
IFS=$OLDIFS
