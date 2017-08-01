#-*- coding: utf-8 -*-  
#!/usr/bin/python  
import paramiko 
import threading  
import getpass


def ssh2(ip,username,passwd,cmd):  
    try:  
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        ssh.connect(ip,22,username,passwd,timeout=20)  
        for m in cmd:  
            stdin, stdout, stderr = ssh.exec_command(m)
            err = stderr.readlines() 
            for e in err:
                print e,
        print '%s\tOK\n'%(ip)
        ssh.close()  
    except:  
        print '%s\tError\n'%(ip)  
if __name__=='__main__':  
    cmd = ['cd /vega/afsis/projects/download/dsen0; tmux new-session -d -s my_server -n runstuff; tmux send-keys -t my_server:0 "./download.sh" C-m']  
    username = raw_input("username: ")
    passwd = getpass.getpass()
    print "Begin......" 
    ip = "yetisubmit.cc.columbia.edu"
    multi_threading = []
    # for user in username: ## for multi-user downloading
    #     a=threading.Thread(target=ssh2,args=(ip,user,passwd,cmd))   
    #     a.start() 
    a=threading.Thread(target=ssh2,args=(ip,username,passwd,cmd))   
    a.start() 