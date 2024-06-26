echo "Migrate database..."
python manage.py migrate
echo "Database migrated"

echo "Checking deployment readiness..."
python manage.py check --deploy
echo "Deployment readiness checked"

echo "Starting server..."
gunicorn core.wsgi --bind 0.0.0.0:8000

