# build our heroku-ready local Docker image
docker build -t artmaker-dj-docker -f Dockerfile .


# push your directory container for the web process to heroku
heroku container:push web -a artmaker-heroku


# promote the web process with your container 
heroku container:release web -a artmaker-heroku


# run migrations
heroku run python3 manage.py migrate -a artmaker-heroku
