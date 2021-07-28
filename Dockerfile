FROM lennihein/arch
RUN paru -S --noconfirm code-server
EXPOSE 8080
COPY --chown=lenni:lenni config.yaml .config/code-server/config.yaml
COPY --chown=lenni:lenni settings.json .local/share/code-server/User/settings.json
RUN wget https://github.com/microsoft/vscode-cpptools/releases/download/1.5.1/cpptools-linux.vsix\
 && wget https://github.com/dracula/visual-studio-code/releases/download/v2.22.4/dracula.vsix\
 && wget https://github.com/twxs/vs.language.cmake/releases/download/v0.0.16-beta1/cmake-0.0.16.vsix\
 && wget https://github.com/microsoft/vscode-cmake-tools/releases/download/v1.7.3/cmake-tools.vsix\
 && wget https://github.com/microsoft/vscode-python/releases/download/2021.7.1060902895/ms-python-release.vsix
RUN code-server\
 --install-extension cpptools-linux.vsix\
 --install-extension dracula.vsix\
 --install-extension cmake-0.0.16.vsix\
 --install-extension cmake-tools.vsix\
 --install-extension ms-python-release.vsix
RUN rm *.vsix -rf
CMD code-server