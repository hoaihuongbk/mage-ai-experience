FROM mageai/mageai:latest
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Replace default_repo with the name of your project (e.g. demo_project)
ARG PROJECT_NAME=demo_project
ARG MAGE_CODE_PATH=/home/src
ARG USER_CODE_PATH=${MAGE_CODE_PATH}/${PROJECT_NAME}

# Set the MAGE_CODE_PATH variable to the path of the Mage code.
ENV PYTHONPATH="${PYTHONPATH}:${MAGE_CODE_PATH}"

WORKDIR ${MAGE_CODE_PATH}

# Replace [project_name] with the name of your project (e.g. demo_project)
COPY ${PROJECT_NAME} ${PROJECT_NAME}

# Set the USER_CODE_PATH variable to the path of user project.
# The project path needs to contain project name.
# Replace [project_name] with the name of your project (e.g. demo_project)
ENV USER_CODE_PATH=${USER_CODE_PATH}

# Setup uv and python virtual environment
RUN uv venv

# Create entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/app/run_app.sh"]