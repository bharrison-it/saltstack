# Written by WATO
# encoding: utf-8

all_hosts += [
  "i-7-116-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1261-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1262-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1281-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1282-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1283-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1287-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1289-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1290-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1291-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1292-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1293-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1294-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1295-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1296-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1298-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1299-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1300-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1302-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1303-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1304-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1305-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1306-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1307-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1308-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1309-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1310-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1311-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1349-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1350-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1351-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1352-VM|Stopped|wato|/" + FOLDER_PATH + "/",
  "i-7-1720-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1881-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1957-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1958-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1964-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1998-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-1999-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2004-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2005-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2006-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2007-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2008-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2009-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2166-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-7-2170-VM|Running|wato|/" + FOLDER_PATH + "/",
]


host_contactgroups.append(
  ( ['fengce'], [ '/' + FOLDER_PATH + '/' ], ALL_HOSTS ))

# Host attributes (needed for WATO)
host_attributes.update(
{'i-7-116-VM': {'alias': None,
                'ipaddress': None,
                'snmp_community': None,
                'tag_agent': None,
                'tag_criticality': None,
                'tag_networking': None,
                'tag_state': 'Running'},
 'i-7-1261-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1262-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1281-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1282-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1283-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1287-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1289-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1290-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1291-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1292-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1293-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1294-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1295-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1296-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1298-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1299-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1300-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1302-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1303-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1304-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1305-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1306-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1307-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1308-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1309-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1310-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1311-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1349-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1350-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1351-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1352-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Stopped'},
 'i-7-1720-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1881-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1957-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1958-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1964-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1998-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-1999-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2004-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2005-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2006-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2007-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2008-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2009-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2166-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'},
 'i-7-2170-VM': {'alias': None,
                 'ipaddress': None,
                 'snmp_community': None,
                 'tag_agent': None,
                 'tag_criticality': None,
                 'tag_networking': None,
                 'tag_state': 'Running'}})
