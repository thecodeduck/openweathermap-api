ROOT_DIR=.
SRC_DIR=$ROOT_DIR/src
BUILD_DIR=$ROOT_DIR/dist
TASKS_DIR=$ROOT_DIR/tasks

rsync \
	--update \
	--recursive \
	--delete \
	$SRC_DIR/ $BUILD_DIR
