#!bin/sh

WEKAJAR="/Applications/weka-3-9-4/weka.jar"
JAVA="java -classpath ${WEKAJAR}"

for arffile in ismir2020_arff/ismir2020*.arff
do
	BASENAME=`echo $arffile | sed -e 's/\.arff$//' | sed -e 's#^ismir2020_arff/##'`

	for N in 32
	do
		echo ${BASENAME}_${N}
		$JAVA weka.classifiers.rules.JRip -x 5 -N ${N} -t ismir2020_arff/${BASENAME}.arff -d ismir2020_jrip_model/${BASENAME}_${N}.model > ismir2020_jrip_report/${BASENAME}_${N}.report
	done
done


