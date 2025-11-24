FROM continuumio/miniconda3:latest

RUN conda install \
    numpy \
    pandas \
    scikit-learn \ 
    matplotlib \
    jupyterlab

ENV JUPYTER_TOKEN=token

# Pip installs
RUN pip install \
    jupyterquiz \
    plotly

WORKDIR /opt/notebooks

COPY ./python_for_data_analysis /opt/notebooks/

EXPOSE 8888

# "/opt/conda/bin/conda install jupyter -y --quiet && mkdir \
# /opt/notebooks && /opt/conda/bin/jupyter notebook \
# --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
# --no-browser --allow-root"

# CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=*", "--port=8888", "--no-browser", "--allow-root"]

# CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=*", "--port=8888", "--no-browser", "--allow-root"]

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]
