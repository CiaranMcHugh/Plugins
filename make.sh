#!/bin/sh

OUT_DIR=$1
DEBUG=$2

# Change into script's own dir
cd $(dirname $0)

DT_SRC=$(dirname $(dirname $(pwd)))
DT_BUILT="${DT_SRC}/built/DataTables"
. $DT_SRC/build/include.sh

scss_compile $DT_SRC/extensions/Plugins/integration/jqueryui/dataTables.jqueryui.scss

# Only copying the integration files
rsync -r integration     $OUT_DIR

