# This should be a test or example startup script

require epi8600

epicsEnvSet ("IOCNAME", "ioc44-epi8600")
iocshLoad ("$(epi8600_DIR)epi8600-eth-ctrl.iocsh", "ASYN_PORT_NAME=PORT1,IP_ADDR=192.168.10.249,TOP=/tmp")
iocshLoad ("$(epi8600_DIR)epi8600-meter.iocsh", "ASYN_PORT_NAME=PORT1,MODBUS_ADR=1,PREFIX=Env-Gas:,DEV_NAME=Gasol,ASLO=1,SCALE=1")
