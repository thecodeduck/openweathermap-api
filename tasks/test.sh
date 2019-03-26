ROOT_DIR=.
SRC_DIR=$ROOT_DIR/src
BUILD_DIR=$ROOT_DIR/dist
TASKS_DIR=$ROOT_DIR/tasks

find $BUILD_DIR -name '*.mocha.tests.js' \
	| xargs mocha --timeout 10000
