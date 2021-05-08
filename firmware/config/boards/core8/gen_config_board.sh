#!/bin/bash

# file gen_config_board.sh

set -e

echo "This script reads rusefi_config.txt and produces firmware persistent configuration headers"
echo "the storage section of rusefiXXX.ini is updated as well"

if [ -z "$1" ]; then
	echo "Board name parameter expected"
	exit 1
fi

BOARDNAME=$1
SHORT_BOARDNAME=$2
ROOT=../../../

echo "BOARDNAME=${BOARDNAME} SHORT_BOARDNAME=${SHORT_BOARDNAME}"

bash gen_signature.sh ${SHORT_BOARDNAME}

# work in progress: migrating to rusefi_${BUNDLE_NAME}.txt
java.exe -DSystemOut.name=gen_config_board \
	-jar ${ROOT}../java_tools/ConfigDefinition.jar \
	-definition ${ROOT}integration/rusefi_config.txt \
	-tool gen_config.sh \
	-ts_destination ${ROOT}tunerstudio \
	-cache ${SHORT_BOARDNAME} \
	-cache_zip_file ${ROOT}tunerstudio/generated/cache.zip \
	-firing_order ${ROOT}controllers/algo/firing_order.h \
	-ts_output_name generated/rusefi_${SHORT_BOARDNAME}.ini \
	-signature signature_${SHORT_BOARDNAME}.txt \
	-signature_destination ${ROOT}controllers/generated/signature_${SHORT_BOARDNAME}.h \
	-enumInputFile ${ROOT}controllers/algo/rusefi_enums.h \
	-enumInputFile ${ROOT}controllers/algo/rusefi_hw_enums.h \
	-board ${BOARDNAME} \
 	-prepend prefix.txt \
	-prepend prepend.txt

[ $? -eq 0 ] || { echo "ERROR generating TunerStudio config for ${BOARDNAME}"; exit 1; }

exit 0
