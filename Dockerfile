FROM lennihein/arch
RUN paru -S --noconfirm code-server
EXPOSE 8080
COPY config.yaml .config/code-server/config.yaml
CMD code-server