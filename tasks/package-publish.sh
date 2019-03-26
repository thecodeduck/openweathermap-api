ROOT_DIR=.
SRC_DIR=$ROOT_DIR/src
BUILD_DIR=$ROOT_DIR/dist
TASKS_DIR=$ROOT_DIR/tasks

NPM=pnpm

cd $BUILD_DIR && $NPM publish --access=public
