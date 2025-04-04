[Unit]
Description=Task Management Backend Service
After=network.target

[Service]
ExecStart=/usr/bin/node /home/talha/ADO-25/A1/task-app/backend/server.js
WorkingDirectory=/home/talha/ADO-25/A1/task-app/backend/
Environment=PORT=5000
Restart=always
User=talha
Group=talha

[Install]
WantedBy=multi-user.target