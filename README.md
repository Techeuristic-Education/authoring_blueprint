# authoring_blueprint
Blueprint for authoring projects for Techeuristic.

# Project Structure

Following is the directory structure for the project which an author should follow while creating the project.

```
project_name
├── code
├── data
├── instructions
│   └── instruction_file.md
└── structure.json
```

## Understanding the project structure

### 1. `project_name`

This is the main directory of the project and all the folders - code, data, instructions and the structure.json file must go in here.
 
### 2. code

This directory contains the raw source code of the project. This is optional, but if provided will make the project related QnA easy.

### 3. instructions

This directory should contain the instructions as `markdown` files. The author is free to name the instruction files at their convenience. The file names must be unique within a project and they should be linked to the respective task in the `structure.json`.

### 4. data

This directory contains the data files for the project. All the projects may not require data files, but in most of the Data Science projects, the data would have to be provided.

### 5. `structure.json`

The `structure.json` file should be at the root of the project. Following are the keys at the root level of the file:

| Key | Data Type | Description |
| --- | --- | --- |
| `title` | `str` | The title of the project |
| `business_objectives` | `str` | What is the business trying to achieve? |
| `business_benefits` | `str` | What benefit will the business gain if the objectives are met? |
| `technical_overview` | `str` | A summarized technical approach for solving the problem |
| `project_key_points` | `list` | A list of points that Techeuristic learners will learn / gain by attempting this project |
| `environment` | `list` | The stack used by the author for implementing the project |
| `industry` | `str` | The industry to which the problem statement / the company caters to |
| `structure` | `list` | A list of dictionaries containing milestone and task details |
| `language` | `str` | The programming language in which the solution is coded |
| `category` | `str` | The category of the project. It could be one of NLP, Computer Vision, Tabular, Audio, Multimodal, Backend, Frontend, Cloud Computing, MLOps, DevOps etc. |

#### 5.1 Keys for milestones

| Key | Data Type | Description |
| --- | --- | --- |
| `milestone_title` | `str` | The title of the milestone |
| `milestone_description` | `str` | A summary of what will be achieved in this milestone |
| `milestone_sequence` | `int` | The sequence of execution of the milestone in the project |
| `milestone_task` | `list` | A list of dictionaries containing task details |

#### 5.2 Keys for tasks

| Key | Data Type | Description |
| --- | --- | --- |
| `task_title` | `str` | The title of the task |
| `task_sequence` | `int` | The sequence of execution of the task in the milestone |
| `document_name` | `str` | The filename in the `instructions` folder that contains instructions for the task |

### 6. infrastructure.sh (Optional)

This file is used for creating the environment required for the project. Ideally the environment creation instructions should be a part of the project instructions.