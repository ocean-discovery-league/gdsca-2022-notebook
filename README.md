# GDSCA 2022 Notebook

## Installing

After cloning this repo to your computer, using a terminal shell `cd` into the repo directory and run the `setup.sh` script:
```
$ ./setup.sh
```

This will first clone a copy of the [`gdsca-2022-data`](https://github.com/ocean-discovery-league/gdsca-2022-data) repo into a `data` directory. This is a separate repo that contains all the data from the survey.

Then the script will download and install a local virtualized copy of miniconda with Python 3.8 and all required packages for running the notebook in Jupyter Lab. It will require about 1 gigabyte of disk space.

This installation will be completely contained within the repo directory and will not affect any other Python or Jupyter Lab installations on your computer. You can uninstall everything by simply deleteing the repo directory itself.

## Activating your shell

Once `setup.sh` has finished you will need to "activate" your shell to use the new installation. `setup.sh` only needs to be run once, but you will need to activate your shell every time you open a new terminal and want to use the notebook.

To activate, in your terminal, `cd` into the repo directory and source the activate script:
```
$ source ./activate
```
This will setup the environment inside your terminal shell to use the local virtualized miniconda install. Your shell prompt will be modified to indicate the activated environment.

## Unactivating

If you want to undo the activation for any reason, you can type `unactivate` (or simply close the terminal window).

## Running the notebook

Once your shell is activated, you can launch the Jupyter Lab server and have it automatically open the `GDSCA-2022.ipynb` with the command:
```
$ jupyter-lab GDSCA-2022.ipynb
```

This will launch the Jupyter Lab server in your terminal, and a browser window will open containing the `GDSCA-2022.ipynb` Notebook.

You can press `ctrl-c` in the terminal (or close the terminal window) to shutdown the Jupyter Lab server.

## Rendering all the figures

You can render all 900+ figures across all eight regions (Africa, Asia, Europe, Oceanis, Americas, Global, Economies, and SIDS) in batch mode right on the command line. The Jupyter Lab server does not need to be running.
```
$ ./render_figures_and_notebooks.sh
```
This will take quite a bit of time to run and will generate some 9000+ files in a `figures` directory. There will also be a notebook generated for each region with the output for that region saved in the notebook. There is a reference copy of all this output available at [http://](https://github.com/ocean-discovery-league/gdsca-2022-figures).

## Uninstalling

Everything is contained inside the repo directory itself. To uninstall simply delete the repo directory, and close any activated terminal windows and notebook browser tabs.
