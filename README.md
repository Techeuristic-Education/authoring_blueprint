# authoring_blueprint
Blueprint for creating authoring projects.

# File Structure

Following is the directory structure for the project which an author should follow while creating the project.

```
.
├── instructions/
│   ├── infrastructure.sh
│   └── structure.json
├── source_code/
├── data/
├── README.md
└── models/
```
 
## instructions

The `instructions` directory should contain the `markdown` files. The author is free to name the instruction files at their convenience.

It contains two necessary files:
- `infrastructure.sh`

    Techeuristic provides an `ubuntu` server with each project registration to the learner where they perform the project instructions. So author needs to provide the environment required to run the project in the `ubuntu` system. 

    It should contain bash commands to install dependencies. For example, if the project requires a MySQL database, the author should provide the commands to install the MySQL server, and create the required user, database, tables, etc.

    NOTE: Things to remember while creating the `infrastructure.sh` file.
    - The file should start with `#!/bin/bash`.
    - Do not use the `sudo` keyword in the script as it runs as root user.

- `structure.json`

    The author should define the project milestones, tasks, and their corresponding instruction file present in the `instructions` directory.

    Its content should be in `JSON` format, refer to the provided[structure.json](instructions/structure.json) file. 

    The `milestone_status` and `task_status` should be kept as `wip` by the author.

    The `max_score` for task's challenge could be 10, 20 or 30 depending on the challenge complexity. 

    In case their is no challenge in the task, set `input`, `expected_output` and `max_score` to `null`.

- instruction file

The author should provide their instructions in `markdown` format and file's extension should be `.md`. 
The instructions should be divided in three parts by keyword `<THBREAK>`. First part should be the instructions for the task. Second part should contain the challenge for the task and third part should contain the solution for the challenge.

## source_code

It should contain the author's source code for the project.

## data

In case the project requires some additional data, the author can provide it in the `data` directory. For example, if the project is related to machine learning and requires some `CSV` files for training the model, the author can provide those files in this directory.

## models

For deep learning projects, the models are resource and time intensive. The author can provide the pre-trained model in the `models` directory.