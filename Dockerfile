FROM jupyter/minimal-notebook:abdb27a6dfbb

#RUN pip install s3contents --no-cache-dir
RUN pip install git+https://github.com/thbeh/s3contents.git@my-feature
RUN jupyter notebook --generate-config -y
COPY jupyter_notebook_config.py $HOME/.jupyter/jupyter_notebook_config.py
