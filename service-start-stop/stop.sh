# 关闭SER服务
ser_pid=`ps -ef | grep "python listener.py" | grep -v grep |awk '{print $2}'`
if [ "${ser_pid}flag" ==  "flag" ]
then
    echo SER服务还未启动!
else
    kill -9  $ser_pid
    echo 已关闭SER服务
fi
# 关闭图谱服务
graph_pid=`ps -ef | grep "python db_graph.py" | grep -v grep |awk '{print $2}'`
if [ "${graph_pid}flag" ==  "flag" ]
then
    echo 图谱服务还未启动!
else
    kill -9  $graph_pid
    echo 已关闭图谱服务
fi
# 关闭问题&摘要服务
qa_pid=`ps -ef | grep "python db-ques-summary.py" | grep -v grep |awk '{print $2}'`
if [ "${qa_pid}flag" ==  "flag" ]
then
    echo 问题\&摘要服务还未启动!
else
    kill -9  $qa_pid
    echo 已关闭问题\&摘要服务
fi
# 关闭后端服务
backend_pid=`ps -ef | grep "java -jar smart-talk-3.1.7.jar" | grep -v grep |awk '{print $2}'`
if [ "${backend_pid}flag" ==  "flag" ]
then
    echo 后端服务还未启动!
else
    kill -9  $backend_pid
    echo 已关闭后端服务
fi
# 关闭前端服务
frontend_pid=`ps -ef | grep "npm run serve" | grep -v grep |awk '{print $2}'`
if [ "${frontend_pid}flag" ==  "flag" ]
then 
    echo 图谱服务还未启动!
else
    kill -9  $frontend_pid
    echo 已关闭前端服务
fi
