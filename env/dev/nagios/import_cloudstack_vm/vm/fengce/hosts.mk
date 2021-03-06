# Written by WATO
# encoding: utf-8

all_hosts += [
  "i-7-116-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1261-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1262-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1281-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1282-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1283-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1287-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1289-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1290-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1291-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1292-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1293-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1294-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1295-VM|lan|ping|down|Stopped|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1296-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1298-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1299-VM|lan|ping|down|Stopped|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1300-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1302-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1303-VM|lan|ping|down|Stopped|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1304-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1305-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1306-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1307-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1308-VM|lan|tcp_none|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1309-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1310-VM|lan|ping|down|Stopped|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1311-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1349-VM|lan|ping|down|Stopped|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1350-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1351-VM|lan|ping|down|Stopped|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1352-VM|lan|tcp_3389|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1720-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1881-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1957-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1958-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1964-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1998-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-1999-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2004-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2005-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2006-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2007-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2008-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2009-VM|lan|tcp_3389|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2166-VM|lan|ping|up|Running|tcp_22|prod|wato|/" + FOLDER_PATH + "/",
  "i-7-2170-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
]


# Settings for alias
extra_host_conf.setdefault('alias', []).extend(
  [(u'WPFVeStore2', ['i-7-1720-VM']),
 (u'beizhen-localpred', ['i-7-1964-VM']),
 (u'wpfs-web-sdxny', ['i-7-2170-VM']),
 (u'DIAOBINGSHAN-WEB-SERVER', ['i-7-1282-VM']),
 (u'CHONGLI-FILE-UPLOAD', ['i-7-1290-VM']),
 (u'beizhen-data-collect', ['i-7-2004-VM']),
 (u'(stop-tmp)JIAOQU-FILE-UPLOAD', ['i-7-1298-VM']),
 (u'(stoped-tmp)QINGLONG-DATA-COLLECT', ['i-7-1309-VM']),
 (u'wpfs-vestore', ['i-7-1300-VM']),
 (u'(stoped-tmp)TAIQI-WEB-SERVER', ['i-7-1351-VM']),
 (u'wpfs-web-dev2', ['i-7-116-VM']),
 (u'(stop-tmp)QINGLONG-FILE-UPLOAD', ['i-7-1307-VM']),
 (u'CHONGLI-LOCALPRED', ['i-7-1287-VM']),
 (u'(stoped-tmp)WULIJI-WEB-SERVER', ['i-7-1303-VM']),
 (u'jingle-data-collect', ['i-7-2005-VM']),
 (u'WPFRTInterface', ['i-7-1261-VM']),
 (u'CHONGLI-DATA-COLLECT', ['i-7-1292-VM']),
 (u'QINGLONG-LOCALPRED', ['i-7-1305-VM']),
 (u'jiaoqu-localpred2', ['i-7-2166-VM']),
 (u'zijinshan-data-collect', ['i-7-2006-VM']),
 (u'(stop-tmp)TAIQI-DATA-COLLECT', ['i-7-1352-VM']),
 (u'DIAOBINGSHAN-FILE-UPLOAD', ['i-7-1289-VM']),
 (u'RealTimeDataServer', ['i-7-1881-VM']),
 (u'(stop-tmp)BAOSHAN-WEB-SERVER', ['i-7-1295-VM']),
 (u'WULIJI-LOCALPRED', ['i-7-1306-VM']),
 (u'CHONGLI-WEB-SERVER', ['i-7-1291-VM']),
 (u'DIAOBINGSHAN-DATA-COLLECT', ['i-7-1283-VM']),
 (u'(stop-tmp)JIAOQU-WEB-SERVER', ['i-7-1299-VM']),
 (u'(stoped-tmp)TAIQI-LOCALPRED', ['i-7-1349-VM']),
 (u'(stoped-tmp)WULIJI-DATA-COLLECT', ['i-7-1304-VM']),
 (u'(stoped-tmp)TAIQI-FILE-UPLOAD', ['i-7-1350-VM']),
 (u'webfigures1', ['i-7-1957-VM']),
 (u'jingle-file-upload', ['i-7-2008-VM']),
 (u'(stop-tmp)QINGLONG-WEB-SERVER', ['i-7-1308-VM']),
 (u'WPFRTInterfaceTest', ['i-7-1262-VM']),
 (u'webfigures2', ['i-7-1958-VM']),
 (u'jingle-localpred', ['i-7-1998-VM']),
 (u'(stop-tmp)BAOSHAN-FILE-UPLOAD', ['i-7-1294-VM']),
 (u'beizhen-file-upload', ['i-7-2007-VM']),
 (u'(stoped-tmp)WULIJI-FILE-UPLOAD', ['i-7-1302-VM']),
 (u'stop-tmp-JIAOQU-LOCALPRED', ['i-7-1310-VM']),
 (u'BAOSHAN-LOCALPRED', ['i-7-1293-VM']),
 (u'DIAOBINGSHAN-LOCALPRED2', ['i-7-1311-VM']),
 (u'zijinshan-localpred', ['i-7-1999-VM']),
 (u'(stop-tmp)BAOSHAN-DATA-COLLECT', ['i-7-1296-VM']),
 (u'DIAOBINGSHAN-VESTORE-DB', ['i-7-1281-VM']),
 (u'zijinshan-file-upload', ['i-7-2009-VM'])])

# Settings for parents
extra_host_conf.setdefault('parents', []).extend(
  [('access-sw01,access-sw02', ['i-7-1720-VM']),
 ('access-sw01,access-sw02', ['i-7-1964-VM']),
 ('access-sw01,access-sw02', ['i-7-2170-VM']),
 ('access-sw01,access-sw02', ['i-7-1282-VM']),
 ('access-sw01,access-sw02', ['i-7-1290-VM']),
 ('access-sw01,access-sw02', ['i-7-2004-VM']),
 ('access-sw01,access-sw02', ['i-7-1298-VM']),
 ('access-sw01,access-sw02', ['i-7-1309-VM']),
 ('access-sw01,access-sw02', ['i-7-1300-VM']),
 ('access-sw01,access-sw02', ['i-7-1351-VM']),
 ('access-sw01,access-sw02', ['i-7-116-VM']),
 ('access-sw01,access-sw02', ['i-7-1307-VM']),
 ('access-sw01,access-sw02', ['i-7-1287-VM']),
 ('access-sw01,access-sw02', ['i-7-1303-VM']),
 ('access-sw01,access-sw02', ['i-7-2005-VM']),
 ('access-sw01,access-sw02', ['i-7-1261-VM']),
 ('access-sw01,access-sw02', ['i-7-1292-VM']),
 ('access-sw01,access-sw02', ['i-7-1305-VM']),
 ('access-sw01,access-sw02', ['i-7-2166-VM']),
 ('access-sw01,access-sw02', ['i-7-2006-VM']),
 ('access-sw01,access-sw02', ['i-7-1352-VM']),
 ('access-sw01,access-sw02', ['i-7-1289-VM']),
 ('access-sw01,access-sw02', ['i-7-1881-VM']),
 ('access-sw01,access-sw02', ['i-7-1295-VM']),
 ('access-sw01,access-sw02', ['i-7-1306-VM']),
 ('access-sw01,access-sw02', ['i-7-1291-VM']),
 ('access-sw01,access-sw02', ['i-7-1283-VM']),
 ('access-sw01,access-sw02', ['i-7-1299-VM']),
 ('access-sw01,access-sw02', ['i-7-1349-VM']),
 ('access-sw01,access-sw02', ['i-7-1304-VM']),
 ('access-sw01,access-sw02', ['i-7-1350-VM']),
 ('access-sw01,access-sw02', ['i-7-1957-VM']),
 ('access-sw01,access-sw02', ['i-7-2008-VM']),
 ('access-sw01,access-sw02', ['i-7-1308-VM']),
 ('access-sw01,access-sw02', ['i-7-1262-VM']),
 ('access-sw01,access-sw02', ['i-7-1958-VM']),
 ('access-sw01,access-sw02', ['i-7-1998-VM']),
 ('access-sw01,access-sw02', ['i-7-1294-VM']),
 ('access-sw01,access-sw02', ['i-7-2007-VM']),
 ('access-sw01,access-sw02', ['i-7-1302-VM']),
 ('access-sw01,access-sw02', ['i-7-1310-VM']),
 ('access-sw01,access-sw02', ['i-7-1293-VM']),
 ('access-sw01,access-sw02', ['i-7-1311-VM']),
 ('access-sw01,access-sw02', ['i-7-1999-VM']),
 ('access-sw01,access-sw02', ['i-7-1296-VM']),
 ('access-sw01,access-sw02', ['i-7-1281-VM']),
 ('access-sw01,access-sw02', ['i-7-2009-VM'])])

host_contactgroups.append(
  ( ['fengce'], [ '/' + FOLDER_PATH + '/' ], ALL_HOSTS ))

# Host attributes (needed for WATO)
host_attributes.update(
{'i-7-116-VM': {'alias': u'wpfs-web-dev2',
                'tag_port_tcp': 'tcp_22',
                'tag_state': 'Running'},
 'i-7-1261-VM': {'alias': u'WPFRTInterface',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1262-VM': {'alias': u'WPFRTInterfaceTest',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1281-VM': {'alias': u'DIAOBINGSHAN-VESTORE-DB',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1282-VM': {'alias': u'DIAOBINGSHAN-WEB-SERVER',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1283-VM': {'alias': u'DIAOBINGSHAN-DATA-COLLECT',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1287-VM': {'alias': u'CHONGLI-LOCALPRED',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1289-VM': {'alias': u'DIAOBINGSHAN-FILE-UPLOAD',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1290-VM': {'alias': u'CHONGLI-FILE-UPLOAD',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1291-VM': {'alias': u'CHONGLI-WEB-SERVER',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1292-VM': {'alias': u'CHONGLI-DATA-COLLECT',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1293-VM': {'alias': u'BAOSHAN-LOCALPRED',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1294-VM': {'alias': u'(stop-tmp)BAOSHAN-FILE-UPLOAD',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1295-VM': {'alias': u'(stop-tmp)BAOSHAN-WEB-SERVER',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Stopped'},
 'i-7-1296-VM': {'alias': u'(stop-tmp)BAOSHAN-DATA-COLLECT',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1298-VM': {'alias': u'(stop-tmp)JIAOQU-FILE-UPLOAD',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1299-VM': {'alias': u'(stop-tmp)JIAOQU-WEB-SERVER',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Stopped'},
 'i-7-1300-VM': {'alias': u'wpfs-vestore',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1302-VM': {'alias': u'(stoped-tmp)WULIJI-FILE-UPLOAD',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1303-VM': {'alias': u'(stoped-tmp)WULIJI-WEB-SERVER',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Stopped'},
 'i-7-1304-VM': {'alias': u'(stoped-tmp)WULIJI-DATA-COLLECT',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1305-VM': {'alias': u'QINGLONG-LOCALPRED',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1306-VM': {'alias': u'WULIJI-LOCALPRED',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1307-VM': {'alias': u'(stop-tmp)QINGLONG-FILE-UPLOAD',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1308-VM': {'alias': u'(stop-tmp)QINGLONG-WEB-SERVER',
                 'tag_state': 'Stopped'},
 'i-7-1309-VM': {'alias': u'(stoped-tmp)QINGLONG-DATA-COLLECT',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1310-VM': {'alias': u'stop-tmp-JIAOQU-LOCALPRED',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Stopped'},
 'i-7-1311-VM': {'alias': u'DIAOBINGSHAN-LOCALPRED2',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1349-VM': {'alias': u'(stoped-tmp)TAIQI-LOCALPRED',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Stopped'},
 'i-7-1350-VM': {'alias': u'(stoped-tmp)TAIQI-FILE-UPLOAD',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1351-VM': {'alias': u'(stoped-tmp)TAIQI-WEB-SERVER',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Stopped'},
 'i-7-1352-VM': {'alias': u'(stop-tmp)TAIQI-DATA-COLLECT',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Stopped'},
 'i-7-1720-VM': {'alias': u'WPFVeStore2',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-1881-VM': {'alias': u'RealTimeDataServer', 'tag_state': 'Running'},
 'i-7-1957-VM': {'alias': u'webfigures1',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1958-VM': {'alias': u'webfigures2',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1964-VM': {'alias': u'beizhen-localpred',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1998-VM': {'alias': u'jingle-localpred',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-1999-VM': {'alias': u'zijinshan-localpred',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-2004-VM': {'alias': u'beizhen-data-collect',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-2005-VM': {'alias': u'jingle-data-collect',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-2006-VM': {'alias': u'zijinshan-data-collect',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-2007-VM': {'alias': u'beizhen-file-upload',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-2008-VM': {'alias': u'jingle-file-upload',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-2009-VM': {'alias': u'zijinshan-file-upload',
                 'tag_port_tcp': 'tcp_3389',
                 'tag_state': 'Running'},
 'i-7-2166-VM': {'alias': u'jiaoqu-localpred2',
                 'tag_port_tcp': 'tcp_22',
                 'tag_state': 'Running'},
 'i-7-2170-VM': {'alias': u'wpfs-web-sdxny', 'tag_state': 'Running'}})
