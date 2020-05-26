worker_processes 2

timeout 300
listen 80

pid '/var/run/unicorn.pid'
listen '/share/unicorn.sock'

stdout_path "./log/unicorn.stdout.log"
stderr_path "./log/unicorn.stderr.log"
