set -e

rm -rf antifilter-*.lst
wget -O antifilter-`date '+%d-%B-%Y'`.lst https://community.antifilter.download/list/domains.lst
cat antifilter-`date '+%d-%B-%Y'`.lst >> ./config/include-hosts-custom.txt
rm -rf antifilter-*.lst
# awk '! a[$0]++' ./config/include-hosts-custom.txt
# # sort -o ./config/include-hosts-custom.txt ./config/include-hosts-custom.txt
# sed -i '/^$/d' ./config/include-hosts-custom.txt