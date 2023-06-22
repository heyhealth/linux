# 启动后端

#cd /neu_idal/smart-talk-system-for-ws/backend-system
#nohup java -jar smart-talk-3.1.7.jar >backend.log 2>&1 &
#echo 成功启动后端...

# 启动SER服务

ACTIVATE_PATH=/home/neu_idal/miniconda3/bin/activate
PROJECT_PATH=/home/neu_idal/smart-talk-system-for-ws

cd ${PROJECT_PATH}/ser-service-v2.6
source ${ACTIVATE_PATH} ser
nohup python listener.py >ser.log 2>&1 &
echo 成功启动SER服务...


# 启动图谱服务

cd ${PROJECT_PATH}/nlp
source  ${ACTIVATE_PATH} mypaddle
nohup python db_graph.py >graph.log 2>&1 &
echo 成功启动知识图谱服务...

# 启动问题 & 摘要（Q&A）服务

cd ${PROJECT_PATH}/nlp
source ${ACTIVATE_PATH} mypaddle
nohup python db-ques-summary.py >QA.log 2>&1 &
echo 成功启动问题及摘要（Q\&A）服务...

# 启动前端

#cd /neu_idal/smart-talk-system-for-ws/frontend-system
#nohup npm run serve >frontend.log 2>&1 &
#echo 成功前端服务...


