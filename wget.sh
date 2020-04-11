


domains=`cat <<EOM
www.kantei.go.jp
www.cao.go.jp
www.bousai.go.jp
www.reconstruction.go.jp
www.jftc.go.jp
www.scj.go.jp
www.npa.go.jp
www.fsa.go.jp
www.caa.go.jp
www.soumu.go.jp
www.fdma.go.jp
www.moj.go.jp
www.mofa.go.jp
www.mof.go.jp
www.nta.go.jp
www.mext.go.jp
www.bunka.go.jp
www.mhlw.go.jp
www.maff.go.jp
www.meti.go.jp
www.jpo.go.jp
www.chuso.meti.go.jp
www.mlit.go.jp
www.gsi.go.jp
www.jma.go.jp
www.kaiiho.milt.go.jp
www.env.go.jp
www.nsr.go.jp
www.mod.go.jp
j-net21.smrj.go.jp
www.pref.hokkaido.lg.jp
www.pref.aomori.lg.jp
www.pref.iwate.jp
www.pref.miyagi.jp
www.pref.akita.lg.jp
www.pref.yamagata.jp
www.pref.fukushima.lg.jp
www.pref.ibaraki.jp
www.pref.tochigi.lg.jp
www.pref.gunma.jp
www.pref.saitama.lg.jp
www.pref.metro.tokyo.jp
www.pref.kanagawa.jp
www.pref.niigata.lg.jp
www.pref.toyama.jp
www.pref.ishikawa.lg.jp
www.pref.fukui.lg.jp
www.pref.yamanashi.lg.jp
www.pref.nagano.lg.jp
www.pref.gifu.lg.jp
www.pref.shizuoka.jp
www.pref.aichi.jp
www.pref.mie.lg.jp
www.pref.shiga.lg.jp
www.pref.kyoto.jp
www.pref.osaka.lg.jp
www.pref.hyogo.lg.jp
www.pref.wakayama.lg.jp
www.pref.tottori.lg.jp
www.pref.shimane.lg.jp
www.pref.okayama.lg.jp
www.pref.hiroshima.lg.jp
www.pref.yamaguchi.lg.jp
www.pref.kagawa.lg.jp
www.pref.ehime.jp
www.pref.kochi.lg.jp
www.pref.tokushima.lg.jp
www.pref.fukuoka.lg.jp
www.pref.saga.lg.jp
www.pref.nagasaki.lg.jp
www.pref.kumamoto.jp
www.pref.oita.jp
www.pref.miyazaki.lg.jp
www.pref.kagoshima.jp
www.pref.okinawa.jp
EOM
`

for domain in ${domains}; do
	echo $domain
	wget -nc -l 2 -r --no-check-certificate $domain
	cp -f robots.txt $domain
done

exit
