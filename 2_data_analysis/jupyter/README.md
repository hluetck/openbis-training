Here is the instruction to setup an environment for both Jupyter Lab and Notebook on your local computer so that you can use Jupyter and connect Jupyter to the openBIS server. 

## Step 0: Install Anaconda or Python

You can setup the environment using `conda` or `pip`. To use one of them, Anaconda or Python with `pip` has to be installed first.

* Option 1: Anaconda includes Python, Jupyter, Python packages for scientific computing and data science.
    * [Download Anaconda with Python3](https://www.anaconda.com/products/individual)
    * Install Anaconda
    <br>

* Option 2: Install Python
    * [Download Python3](https://www.python.org/downloads/)
    * Install Python3

## Step 1: Install Jupyter and Jupyter-openBIS extensions

#### Option 1: Create a virtual environment with `conda` using `environments.yml`

```bash
$ conda env create -f environments.yml
$ conda activate env-jupyter-openbis
```

#### Option 2: Create a virtual environment with Python `venv` and install packages with `pip` using `requirements.txt`

```bash
$ python3 -m venv env-jupyter-openbis
$ source env-jupyter-openbis/bin/activate
(env-jupyter-openbis)$ pip install -r requirements.txt
```

#### Option 3: Manually install packages and openBIS extensions for Jupyter

* In a terminal
    
    ```bash
    $ pip install jupyterlab 
    ```

* Install required packages

    ```bash
    $ pip install numpy matplotlib jupyter_contrib_nbextensions
    ```

* For **Jupyter Lab**, install `jupyterlab-openbis` extension

    ```bash
    $ pip install jupyterlab-openbis
    ```

* For **Jupyter Notebook**, install `jupyter-openbis` extension

    ```bash
    $ pip install --upgrade jupyter-openbis-extension
    ```

## Step 2: Enable the `jupyter-openbis` extension

This step is only for **Jupyter Notebook**. For Jupyter Lab, the extension is automatically enabled. 

```bash
$ jupyter-nbextensions_configurator enable --py jupyter-openbis-server
```

When `jupyter-openbis` extension has been installed and enabled, you can see three extra buttons in the toolbar to create a connection to the openBIS server, to download datasets and to upload datasets.

## Step 3: Optional

To save a static version of a notebook, we export a Jupyter notebook to HTML but the exported version does not include embedded images. This issue can be overcome by installing the unofficial Jupyter Notebook Extension `jupyter-contrib-nbextension` which provides an option `Html_embed` to export a notebook with embedded images. Before enabling the extensions, install javascript and css files:

```bash
$ jupyter-contrib-nbextension install --user
```
    
Then, enable the extensions:

```bash
$ jupyter-nbextensions_configurator enable --user
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
    
