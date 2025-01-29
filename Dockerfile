FROM condaforge/miniforge3

COPY environment.yml .

RUN conda env create -f environment.yml

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "my_docker_kernel", "jupyter", "notebook","--allow-root","--ip=0.0.0.0","--port=8981","--no-browser"]