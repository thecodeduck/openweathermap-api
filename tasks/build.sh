ROOT_DIR=.
SRC_DIR=$ROOT_DIR/src
BUILD_DIR=$ROOT_DIR/dist
TASKS_DIR=$ROOT_DIR/tasks

NPM=pnpm

sh $TASKS_DIR/build-src.sh

sh $TASKS_DIR/build-docs.sh

cp $ROOT_DIR/README.md $BUILD_DIR
cp $ROOT_DIR/package.json $BUILD_DIR
cp $ROOT_DIR/.npmignore $BUILD_DIR
cp $ROOT_DIR/LICENSE $BUILD_DIR
