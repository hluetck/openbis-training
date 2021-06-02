## Install Jupyter locally

* Option 1: Anaconda includes Python, Jupyter, Python packages for scientific computing and data science.
    * [Download Anaconda with Python3](https://www.anaconda.com/products/individual)
    * Install Anaconda

* Option 2: Using `pip`
    * [Download Python3](https://www.python.org/downloads/)
    * Install Python3
    * In a terminal
    
```bash
$ pip install jupyterlab 
```

## Run Jupyter
* Run Jupyter Lab

```bash
$ jupyter-lab
```
* Run Jupyter Notebook

```bash
$ jupyter-nbclassic
```

## Create a virtual environment

In this tutorial, we provide environment files which include Jupyter Lab and Notebook, Jupyter-openBIS extensions for both Jupyter Lab and Notebook, and Jupyter Notebook extensions.

* Create a virtual environment with Conda environment from the YAML file `environments.yml`. 

```bash
$ conda env create -f environments.yml
$ conda activate env-jupyter-obenbis
```
    
Or with the requirement file `requirements.txt` for `pip`

```bash
$ python3 -m venv env-jupyter-openbis
$ source env-jupyter-openbis/bin/activate
(env-jupyter-obenbis)$ pip install -r requirements.txt
```

* Enable the `jupyter-openbis` extension for Jupyter Notebook

```bash
$ jupyter-nbextensions_configurator enable --py jupyter-openbis-server
```
* This step is optional. To save a static version of a notebook, we export a Jupyter notebook to HTML but the exported version does not include embedded images. This issue can be overcome by installing the unofficial Jupyter Notebook Extension `jupyter-contrib-nbextension` which is included in the environment files. Before enabling the extensions, install javascript and css files:

```bash
$ jupyter-contrib-nbextension install --user
```

Enable the extensions

```bash
$ jupyter-nbextensions_configurator enable --user
```

## Install an openBIS extension for Jupyter
You can manually install Jupyter-openBIS extensions as following:

**Jupyter Lab**

* Install `jupyterlab-openbis` extension

```bash
$ pip install jupyterlab-openbis
```

**Jupyter Notebook**

* Install `jupyter-openbis` extension


```bash
$ pip install --upgrade jupyter-openbis-extension
```

* Enable the `jupyter-openbis` extension


```bash
$ jupyter-nbextensions_configurator enable --py jupyter-openbis-server
```
