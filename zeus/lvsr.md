## Przygotowanie środowiska

   module load plgrid/libs/hdf5/1.8.12
   module load plgrid/tools/python/2.7.9 
   pip install --user virtualenv
   ~/.local/bin/virtualenv --system-site-packages  ~/lvsr_python 
   source lvsr_python/bin/activate
   pip install IPython
   CFLAGS=$PRACE_CFLAGS LDFLAGS=$PRACE_LDFLAGS pip install --user h5py
   pip install matplotlib
   pip install pykwalify

## Kod

   cd work
   git clone  git@github.com:janchorowski/fully-neural-lvsr.git

## Dane

   csync -avz :~/scratch/fully-neural-lvsr/data $PLG_GROUPS_STORAGE/plggnnspeech/

## Uruchamianie obliczeń
   THEANO_FLAGS=device=gpu FUEL_DATA_PATH=$PLG_GROUPS_STORAGE/plggnnspeech/data/timit python $LVSR/bin/run.py train --fast-start --no-bokeh nips_baseline $LVSR/exp/timit/configs/nips_baseline.yaml 2>&1 | tee -ai run.log
