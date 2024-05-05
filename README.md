# Flask-Docker-App

## Set up & Installation.

### 1 .Clone/Fork the git repo and create a virtual environment 
                    
**Windows**
          
```bash
git clone https://github.com/Dev-Elie/Flask-Docker-App.git
cd Flask-Docker-App
py -3 -m venv venv

```
          
**macOS/Linux**
          
```bash
git clone https://github.com/Dev-Elie/Flask-Docker-App.git
cd Flask-Docker-App
python3 -m venv venv

```
### 2 .Activate the environment
          
**Windows** 

```venv\Scripts\activate```
          
**macOS/Linux**

```. venv/bin/activate```
or
```source venv/bin/activate```


### 3 .Install the requirements

Applies for windows/macOS/Linux

```
pip install -r requirements.txt
```

### 5. Run the application
`python app.py`

# OR

## Create a new application from scratch

### 1. Create a directory with a name **"Flask-Docker-App"**
`mkdir Flask-Docker-App`

### 2. Navigate to the newly created directory

`cd Flask-Docker-App`

### 3. Create a virtual environment

**Windows**

`py -3 -m venv venv`
<br>

**macOS/Linux**

`python3 -m venv venv`

### 4. Activate the environment
          
**Windows** 

```venv\Scripts\activate```
          
**macOS/Linux**

```. venv/bin/activate```
or
```source venv/bin/activate```

### 3 .Install Flask

`pip install Flask`

### 4. Create the required files
Create two files; **app.py** and **Dockerfile**

`touch app.py Dockerfile`
