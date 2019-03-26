ROOT_DIR=.
SRC_DIR=$ROOT_DIR/src
BUILD_DIR=$ROOT_DIR/dist
TASKS_DIR=$ROOT_DIR/tasks

README_TEMPLATE=$ROOT_DIR/README.hbs
README_OUTPUT=$ROOT_DIR/README.md

# make dist dir if not exists
mkdir -p $BUILD_DIR

# scrape src for js files, build jsdocs from
( \
	find $SRC_DIR -name '*.js' | \
	sort -t'/' -k2.2 -k2.1 |  \
	xargs jsdoc2md \
		--template $README_TEMPLATE \
		--separators \
		--param-list-format list \
		--property-list-format list \
		--member-index-format list \
		--files \
) > $README_OUTPUT
