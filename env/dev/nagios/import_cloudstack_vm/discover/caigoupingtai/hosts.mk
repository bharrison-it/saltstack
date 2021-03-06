# Written by WATO
# encoding: utf-8

all_hosts += [
  "i-22-1888-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1890-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1891-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1892-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1893-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1894-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1895-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1947-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1948-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-1949-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-2153-VM|Running|wato|/" + FOLDER_PATH + "/",
  "i-22-2154-VM|Running|wato|/" + FOLDER_PATH + "/",
]


host_contactgroups.append(
  ( ['caigoupingtai'], [ '/' + FOLDER_PATH + '/' ], ALL_HOSTS ))

# Host attributes (needed for WATO)
host_attributes.update(
{'i-22-1888-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1890-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1891-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1892-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1893-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1894-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1895-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1947-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1948-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-1949-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-2153-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'},
 'i-22-2154-VM': {'alias': None,
                  'ipaddress': None,
                  'snmp_community': None,
                  'tag_agent': None,
                  'tag_criticality': None,
                  'tag_networking': None,
                  'tag_state': 'Running'}})
