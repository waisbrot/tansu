FROM scratch

ARG REL_NAME
ARG REL_VSN=1
ARG ERTS_VSN

ENV BINDIR /erts-7.3.1/bin
ENV BOOT /releases/1/tansu_release
ENV CONFIG /releases/1/sys.config
ENV ARGS_FILE /releases/1/vm.args

ENV TZ=GMT

ENTRYPOINT exec ${BINDIR}/erlexec -boot_var /lib -boot ${BOOT} -noinput -config ${CONFIG} -args_file ${ARGS_FILE}

EXPOSE 22 80
VOLUME /db /snapshosts

ADD _rel/tansu_release/ /
