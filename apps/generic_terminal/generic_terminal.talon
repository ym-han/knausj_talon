tag: user.generic_terminal
-
# === BASH

lisa: 
    user.terminal_list_directories()
lisa all: 
    user.terminal_list_all_directories()

cd [<user.text>]: user.terminal_change_directory(text or "")
cd root: user.terminal_change_directory_root()

cd previous: 
  insert("cd -")
  key(enter)

cd up: "cd ../\n"


# file management
move file: "mv "
copy file: "cp "

we get: "wget "

make dear: "mkdir "


clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
#kill all: user.terminal_kill_all()

change all accessed: "find ./ -type f -exec touch -a {} +"

gzip file: "gzip -d "
gunzip recursive: "gunzip -r "

# find . -iname '*.zip' -exec sh -c 'unzip -o -d "${0%.*}" "$0"' '{}' ';'
# https://stackoverflow.com/questions/107995/how-do-you-recursively-unzip-archives-in-a-directory-and-its-subdirectories-from

# find . -type f -iname "*.tar" -print0 -execdir tar xf {} \; -delete
# https://unix.stackexchange.com/questions/145342/how-do-i-use-gunzip-and-tar-to-extract-my-tar-gz-file-to-the-specific-directory

# https://stackoverflow.com/questions/25042643/untar-all-gz-in-directories-and-subdirectories




git name: "ym-han\n"
# move this to git scripts?


# === ENVIRONMENTS
make virtual environment: "virtualenv"
environment reel: "source ~/environments/rel/bin/activate\n"
environment cross lingual: "source ~/crossling/bin/activate\n"
environment termolator: "source ~/environments/termo/bin/activate\n"
environment lip reading: "source /users/yh31/scratch/projects/lip/lip_env/bin/activate\n"

deactivate environment: "deactivate"


# === SPECIFIC PATHS

g down prefix: "https://drive.google.com/u/0/uc?id="

personal termolator path: "/users/yh31/packages/The_Termolator/"
set termo variable: 'export TERMOLATOR="/users/yh31/packages/The_Termolator"'

# === OSCAR
log into oscar: "ssh -X yh31@ssh.ccv.brown.edu\n"

log into oscar <number>: 
  insert("ssh -X yh31@ssh.ccv.brown.edu\n")
  sleep(1000ms)
  insert("interact -t 0{number}:00:00 -m 10g -n 1\n")

request <number> interactive: "interact -t 0{number}:00:00 -m 10g -n 1"

oscar julia: "module load julia/1.6.0\n"
oscar python: "module load python/3.7.4\n"


oscar workspace: 
  insert("module load python/3.7.4\n")
  insert("module load julia/1.6.0\n")
  insert("cd /users/yh31/scratch/\n")  

python workspace: 
  insert("module load python/3.7.4\n")
  insert("source ~/environments/rel/bin/activate\n")
  insert("cd /users/yh31/scratch/projects/sr-nlp/data_gathering/source/making_data/prepping-raw-data\n")


go to cleaned files: "cd /users/yh31/scratch/datasets/entity_linking/cleaned\n"
go to slurm scripts: "cd /users/yh31/scratch/projects/embed_exp/slurm_scripts\n"
#go to oscar config: "cd cd_lstm_joulin_SAT_night_lower_wt_decay_and_dropout.xml\n"

go to embedding scripts: "cd /users/yh31/scratch/projects/embed_exp\n"
go to sense ref scripts: "cd /users/yh31/scratch/projects/sr_neural/scripts/etl/nyt\n"

# === CONDA

conda list environments: "conda env list"



# === JULIA / PYTHON SPECIFIC

start julia: insert("julia\n")
start julia project: insert("julia --project=@.\n")

exit julia: "exit()\n"

oscar julia: "module load julia/1.5.0\n"
oscar python: "module load python/3.7.4\n"

pip install user: "pip install --user"
pip install user: "pip install "
pip install requirements: "pip install -r requirements.txt"

activate 1460 local: "source /Users/ymh/Documents/Git_repos/NLP/cs1460/environments/1460_env/bin/activate"

# === SQL specific

sequel mode header: ".mode column \n.header on\n"

# === POSTGRES
kill all postgres: "pkill postgres"
# https://askubuntu.com/questions/547434/how-to-nicely-stop-all-postgres-processes

