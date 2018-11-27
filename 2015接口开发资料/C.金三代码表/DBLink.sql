/***************************************[ 生产环境 ]****************************************/
/*金三外部交换DBlink*/
create database link HNLTWBDS
  connect to HNDSZYYH  identified by HNDSZYYH
  using '(DESCRIPTION=
  (ADDRESS_LIST=
  (ADDRESS=(PROTOCOL=tcp)(HOST=149.12.72.196)(PORT=1521))
  (ADDRESS=(PROTOCOL=tcp)(HOST=149.12.72.197)(PORT=1521))
  (LOAD_BALANCE=ON)
  (FAILOVER=ON)
  )
  (CONNECT_DATA=
    (SERVICE_NAME=hnltwbds)
    (GLOBAL_NAME=hnltwbds)
    (FAILOVER_MODE=(TYPE=SELECT)(METHOD=BASIC))
  )
 )';

/*金三核心DBlink*/
create database link HNLTHXCX
  connect to HX_HNDSCX_CLFJY identified by CLFJY
  using '(DESCRIPTION =
  (ADDRESS_LIST =
  (ADDRESS = (PROTOCOL = tcp)(HOST = 149.12.72.52)(PORT = 1521))
  (ADDRESS = (PROTOCOL = tcp)(HOST = 149.12.72.53)(PORT = 1521))
  (LOAD_BALANCE = ON)
  (FAILOVER = ON)
  )
  (CONNECT_DATA =
     (SERVICE_NAME = hnlthxcx)
     (GLOBAL_NAME = hnlthxcx)
     (FAILOVER_MODE =
     (TYPE = SELECT)
     (METHOD = BASIC)
  )
  )
)';
/************************************[ 预生产环境 ]*******************************************/
/*金三核心DBlink*/
create database link hnltcxff
connect to HX_HNDSCX_CLFJY identified by CLFJY  
using '(DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = 149.12.73.7)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = hnltcxff)
    )
  )';  

/*金三外部交换DBlink*/
create database link HNLTYSCW
connect to hndsyscyyh identified by hndsyscyyh  
using '(DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = 149.12.73.14)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = hnltyscwbds)
    )
  )'; 