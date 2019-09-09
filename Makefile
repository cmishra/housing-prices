
project_dir = `pwd`
PYTHONPATH = ${PYTHONPATH}:${project_dir}
ifndef TAG
TAG = ${USER}
endif

BUILD_NAME = "jupyterlab:${TAG}"


build-docker:
	docker build -t ${BUILD_NAME} .

run-docker:
	docker run -p 8888:8888 -it --rm -v ${project_dir}:/workingdir \
       ${BUILD_NAME}

