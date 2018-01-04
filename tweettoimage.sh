NAME=1
INPUT=1
while read -r line; do
  TWEET="$line"
  echo $TWEET
  height=`identify -format %h /IMAGE-DIRECTORY${INPUT}.jpg`; \
  height=$(($height / 5 * 2));
  width=`identify -format %w /IMAGE-DIRECTORY/${INPUT}.jpg`; \
  width=$(($width / 4 * 3));
  convert -background none -font Helvetica -fill white -gravity center -size ${width}x${height} \
          caption:"$TWEET" \
          /IMAGE-DIRECTORY/${INPUT}c.jpg +swap -gravity center -composite  /PRODUCT-DIRECTORY/${NAME}.jpg
  NAME=$((NAME+1))
  INPUT=$((INPUT+1))
  echo $NAME
done < "tweets.txt"
