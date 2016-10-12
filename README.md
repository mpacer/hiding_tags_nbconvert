The `toggle_hidden.tpl` will look for the `hidden` tag under `cell.metadata.tags` and will filter the result. 

This can be invoked with `jupyter nbconvert mimic-the-ipython-notebook-cell-execution.ipynb --to html --template toggle_hidden`, if run from within the directory.
