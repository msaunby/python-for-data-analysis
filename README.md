# python-for-data-analysis
Conda environment and notes for remote delivery

## CfRR Python for Data Analysis

### [Introduction](https://coding-for-reproducible-research.github.io/CfRR_Courses/individual_modules/section_landing_pages/python_for_data_analysis.html)

### [Self-study notes](https://coding-for-reproducible-research.github.io/CfRR_Courses/course_homepages/python.html)


## Running in docker

https://www.anaconda.com/docs/getting-started/working-with-conda/integrations/docker

https://hub.docker.com/r/continuumio/miniconda3

```
 docker run -i -t -p 8888:8888 continuumio/miniconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir \
/opt/notebooks && /opt/conda/bin/jupyter notebook \
--notebook-dir=/opt/notebooks --ip='*' --port=8888 \
--no-browser --allow-root"
```

https://towardsdatascience.com/dockerizing-jupyter-projects-39aad547484a/

```
docker build -t cfrrjupyter:latest .
```

```
## With copy of data - edits will be lost
# docker run --rm -it -p 8888:8888 cfrrjupyter:latest

## With mounted volume
docker run --volume $(pwd)/python_for_data_analysis:/opt/notebooks --rm -it -p 8888:8888 cfrrjupyter:latest
```
