# python-for-data-analysis
Conda environment and notes for remote delivery

* Michael Saunby, November 2025

## CfRR Python for Data Analysis

### [Introduction](https://coding-for-reproducible-research.github.io/CfRR_Courses/individual_modules/section_landing_pages/python_for_data_analysis.html)

### [Self-study notes](https://coding-for-reproducible-research.github.io/CfRR_Courses/course_homepages/python.html)


## IMPORTANT

See the CfRR website at https://coding-for-reproducible-research.github.io/CfRR_Courses/home_page.html and GitHub repository at https://github.com/coding-for-reproducible-research 

Course content is updated from time to time. To fetch the latest course content -

```
git clone --depth 1  --branch master https://github.com/coding-for-reproducible-research/CfRR_Courses.git
cp -r CfRR_Courses/individual_modules/python_for_data_analysis/ python_for_data_analysis
```

## Running in docker

### Build the container

```
docker build -t cfrrjupyter:latest .
```

### Run the container

```
## With copy of data - edits will be lost
# docker run --rm -it -p 8888:8888 cfrrjupyter:latest

## With mounted volume
docker run --volume $(pwd)/python_for_data_analysis:/opt/notebooks --rm -it -p 8888:8888 cfrrjupyter:latest
```

Or just run ```start-jupyter.sh```
