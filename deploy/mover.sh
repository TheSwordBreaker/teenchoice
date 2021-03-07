

# cd /home/django/new/teenchoice

# find /home/django/teenchoice/build -mindepth 1 ! -regex '^/home/django/teenchoice/build/media\(/.*\)?' -delete
# rm -rf /home/django/teenchoice/build/!(media)

# cp -r ../build ../../../teenchoice


# yarn build ; git add -A ; git commit -m "Small fix"; git push

cd /home/django/new/teenchoice
git pull
rm -rf /home/django/teenchoice/build
cp -r /home/django/new/teenchoice/build /home/django/teenchoice/
systemctl restart nginx
systemctl restart gunicorn


# cd /home/django/new/teenchoice ; git pull; rm -rf /home/django/teenchoice/build;
# cp -r /home/django/new/teenchoice/build /home/django/teenchoice/ ;systemctl restart nginx;systemctl restart gunicorn
