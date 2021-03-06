# Written by WATO
# encoding: utf-8

all_hosts += [
  "i-15-1315-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1396-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1397-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1751-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1752-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1757-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1758-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1759-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1760-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1761-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1762-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1763-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1764-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1765-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1766-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1767-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1768-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1770-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1779-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1783-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1784-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1785-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1786-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1787-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1788-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1789-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1790-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1791-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1792-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1793-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1794-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1795-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1797-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1821-VM|lan|tcp_none|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1822-VM|lan|tcp_none|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1823-VM|lan|tcp_none|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1824-VM|lan|tcp_none|ping|down|Stopped|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1825-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1827-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1854-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1863-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1864-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1867-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1900-VM|lan|tcp_80|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1901-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1918-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1967-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-1996-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-2011-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-2012-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-2013-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
  "i-15-2152-VM|lan|tcp_none|ping|up|Running|prod|wato|/" + FOLDER_PATH + "/",
]


# Settings for alias
extra_host_conf.setdefault('alias', []).extend(
  [(u'SJZX16', ['i-15-1793-VM']),
 (u'SJZX29', ['i-15-1797-VM']),
 (u'rdp-demo', ['i-15-1867-VM']),
 (u'(no)SJZX33', ['i-15-1824-VM']),
 (u'SJZX42', ['i-15-2013-VM']),
 (u'SJZX-07', ['i-15-1761-VM']),
 (u'SJZX-14', ['i-15-1768-VM']),
 (u'SJZX-04', ['i-15-1758-VM']),
 (u'SJZX19', ['i-15-1785-VM']),
 (u'SJZX39', ['i-15-1967-VM']),
 (u'SJZX27', ['i-15-1795-VM']),
 (u'SJZX-08', ['i-15-1762-VM']),
 (u'SJZX41', ['i-15-2012-VM']),
 (u'SJZX-12', ['i-15-1766-VM']),
 (u'modbus1', ['i-15-1396-VM']),
 (u'SJZX01', ['i-15-1751-VM']),
 (u'SJZX25', ['i-15-1791-VM']),
 (u'data-receive', ['i-15-1770-VM']),
 (u'SJZX20', ['i-15-1786-VM']),
 (u'SJZX26', ['i-15-1794-VM']),
 (u'SJZX36', ['i-15-1900-VM']),
 (u'SJZX-10', ['i-15-1764-VM']),
 (u'sjzx34', ['i-15-1825-VM']),
 (u'SJZX-13', ['i-15-1767-VM']),
 (u'GDUPC-DBTEST', ['i-15-1315-VM']),
 (u'SJZX22', ['i-15-1788-VM']),
 (u'SJZX18', ['i-15-1784-VM']),
 (u'SJZX35', ['i-15-1864-VM']),
 (u'SJZX-06', ['i-15-1760-VM']),
 (u'SJZX15', ['i-15-1792-VM']),
 (u'stop-tmp-SJZX37', ['i-15-1901-VM']),
 (u'SJZX-11', ['i-15-1765-VM']),
 (u'(no)SJZX38', ['i-15-1918-VM']),
 (u'modbus2', ['i-15-1397-VM']),
 (u'SJZX17', ['i-15-1783-VM']),
 (u'(no)SJZX32', ['i-15-1823-VM']),
 (u'SJZX23', ['i-15-1789-VM']),
 (u'SJZX28', ['i-15-1863-VM']),
 (u'SJZX03', ['i-15-1757-VM']),
 (u'SJZX02', ['i-15-1752-VM']),
 (u'data-transmit1', ['i-15-1827-VM']),
 (u'SJZX-09', ['i-15-1763-VM']),
 (u'SJZX24', ['i-15-1790-VM']),
 (u'SJZX40', ['i-15-2011-VM']),
 (u'(no)SJZX31', ['i-15-1822-VM']),
 (u'gdupc-ftp', ['i-15-1854-VM']),
 (u'data-transmit', ['i-15-1779-VM']),
 (u'SJZX21', ['i-15-1787-VM']),
 (u'modbus03', ['i-15-1996-VM']),
 (u'gdzs-winddata', ['i-15-2152-VM']),
 (u'(no)SJZX30', ['i-15-1821-VM']),
 (u'SJZX-05', ['i-15-1759-VM'])])

# Settings for parents
extra_host_conf.setdefault('parents', []).extend(
  [('access-sw01,access-sw02', ['i-15-1793-VM']),
 ('access-sw01,access-sw02', ['i-15-1797-VM']),
 ('access-sw01,access-sw02', ['i-15-1867-VM']),
 ('access-sw01,access-sw02', ['i-15-1824-VM']),
 ('access-sw01,access-sw02', ['i-15-2013-VM']),
 ('access-sw01,access-sw02', ['i-15-1761-VM']),
 ('access-sw01,access-sw02', ['i-15-1768-VM']),
 ('access-sw01,access-sw02', ['i-15-1758-VM']),
 ('access-sw01,access-sw02', ['i-15-1785-VM']),
 ('access-sw01,access-sw02', ['i-15-1967-VM']),
 ('access-sw01,access-sw02', ['i-15-1795-VM']),
 ('access-sw01,access-sw02', ['i-15-1762-VM']),
 ('access-sw01,access-sw02', ['i-15-2012-VM']),
 ('access-sw01,access-sw02', ['i-15-1766-VM']),
 ('access-sw01,access-sw02', ['i-15-1396-VM']),
 ('access-sw01,access-sw02', ['i-15-1751-VM']),
 ('access-sw01,access-sw02', ['i-15-1791-VM']),
 ('access-sw01,access-sw02', ['i-15-1770-VM']),
 ('access-sw01,access-sw02', ['i-15-1786-VM']),
 ('access-sw01,access-sw02', ['i-15-1794-VM']),
 ('access-sw01,access-sw02', ['i-15-1900-VM']),
 ('access-sw01,access-sw02', ['i-15-1764-VM']),
 ('access-sw01,access-sw02', ['i-15-1825-VM']),
 ('access-sw01,access-sw02', ['i-15-1767-VM']),
 ('access-sw01,access-sw02', ['i-15-1315-VM']),
 ('access-sw01,access-sw02', ['i-15-1788-VM']),
 ('access-sw01,access-sw02', ['i-15-1784-VM']),
 ('access-sw01,access-sw02', ['i-15-1864-VM']),
 ('access-sw01,access-sw02', ['i-15-1760-VM']),
 ('access-sw01,access-sw02', ['i-15-1792-VM']),
 ('access-sw01,access-sw02', ['i-15-1901-VM']),
 ('access-sw01,access-sw02', ['i-15-1765-VM']),
 ('access-sw01,access-sw02', ['i-15-1918-VM']),
 ('access-sw01,access-sw02', ['i-15-1397-VM']),
 ('access-sw01,access-sw02', ['i-15-1783-VM']),
 ('access-sw01,access-sw02', ['i-15-1823-VM']),
 ('access-sw01,access-sw02', ['i-15-1789-VM']),
 ('access-sw01,access-sw02', ['i-15-1863-VM']),
 ('access-sw01,access-sw02', ['i-15-1757-VM']),
 ('access-sw01,access-sw02', ['i-15-1752-VM']),
 ('access-sw01,access-sw02', ['i-15-1827-VM']),
 ('access-sw01,access-sw02', ['i-15-1763-VM']),
 ('access-sw01,access-sw02', ['i-15-1790-VM']),
 ('access-sw01,access-sw02', ['i-15-2011-VM']),
 ('access-sw01,access-sw02', ['i-15-1822-VM']),
 ('access-sw01,access-sw02', ['i-15-1854-VM']),
 ('access-sw01,access-sw02', ['i-15-1779-VM']),
 ('access-sw01,access-sw02', ['i-15-1787-VM']),
 ('access-sw01,access-sw02', ['i-15-1996-VM']),
 ('access-sw01,access-sw02', ['i-15-2152-VM']),
 ('access-sw01,access-sw02', ['i-15-1821-VM']),
 ('access-sw01,access-sw02', ['i-15-1759-VM'])])

host_contactgroups.append(
  ( ['gdupc'], [ '/' + FOLDER_PATH + '/' ], ALL_HOSTS ))

# Host attributes (needed for WATO)
host_attributes.update(
{'i-15-1315-VM': {'alias': u'GDUPC-DBTEST', 'tag_state': 'Running'},
 'i-15-1396-VM': {'alias': u'modbus1', 'tag_state': 'Running'},
 'i-15-1397-VM': {'alias': u'modbus2', 'tag_state': 'Running'},
 'i-15-1751-VM': {'alias': u'SJZX01', 'tag_state': 'Running'},
 'i-15-1752-VM': {'alias': u'SJZX02', 'tag_state': 'Running'},
 'i-15-1757-VM': {'alias': u'SJZX03', 'tag_state': 'Running'},
 'i-15-1758-VM': {'alias': u'SJZX-04', 'tag_state': 'Running'},
 'i-15-1759-VM': {'alias': u'SJZX-05', 'tag_state': 'Running'},
 'i-15-1760-VM': {'alias': u'SJZX-06', 'tag_state': 'Running'},
 'i-15-1761-VM': {'alias': u'SJZX-07', 'tag_state': 'Running'},
 'i-15-1762-VM': {'alias': u'SJZX-08', 'tag_state': 'Running'},
 'i-15-1763-VM': {'alias': u'SJZX-09', 'tag_state': 'Running'},
 'i-15-1764-VM': {'alias': u'SJZX-10', 'tag_state': 'Running'},
 'i-15-1765-VM': {'alias': u'SJZX-11', 'tag_state': 'Running'},
 'i-15-1766-VM': {'alias': u'SJZX-12', 'tag_state': 'Running'},
 'i-15-1767-VM': {'alias': u'SJZX-13', 'tag_state': 'Running'},
 'i-15-1768-VM': {'alias': u'SJZX-14', 'tag_state': 'Running'},
 'i-15-1770-VM': {'alias': u'data-receive', 'tag_state': 'Running'},
 'i-15-1779-VM': {'alias': u'data-transmit', 'tag_state': 'Running'},
 'i-15-1783-VM': {'alias': u'SJZX17', 'tag_state': 'Running'},
 'i-15-1784-VM': {'alias': u'SJZX18', 'tag_state': 'Running'},
 'i-15-1785-VM': {'alias': u'SJZX19', 'tag_state': 'Running'},
 'i-15-1786-VM': {'alias': u'SJZX20', 'tag_state': 'Running'},
 'i-15-1787-VM': {'alias': u'SJZX21', 'tag_state': 'Running'},
 'i-15-1788-VM': {'alias': u'SJZX22', 'tag_state': 'Running'},
 'i-15-1789-VM': {'alias': u'SJZX23', 'tag_state': 'Running'},
 'i-15-1790-VM': {'alias': u'SJZX24', 'tag_state': 'Running'},
 'i-15-1791-VM': {'alias': u'SJZX25', 'tag_state': 'Running'},
 'i-15-1792-VM': {'alias': u'SJZX15', 'tag_state': 'Running'},
 'i-15-1793-VM': {'alias': u'SJZX16', 'tag_state': 'Running'},
 'i-15-1794-VM': {'alias': u'SJZX26', 'tag_state': 'Running'},
 'i-15-1795-VM': {'alias': u'SJZX27', 'tag_state': 'Running'},
 'i-15-1797-VM': {'alias': u'SJZX29', 'tag_state': 'Running'},
 'i-15-1821-VM': {'alias': u'(no)SJZX30', 'tag_state': 'Stopped'},
 'i-15-1822-VM': {'alias': u'(no)SJZX31', 'tag_state': 'Stopped'},
 'i-15-1823-VM': {'alias': u'(no)SJZX32', 'tag_state': 'Stopped'},
 'i-15-1824-VM': {'alias': u'(no)SJZX33', 'tag_state': 'Stopped'},
 'i-15-1825-VM': {'alias': u'sjzx34', 'tag_state': 'Running'},
 'i-15-1827-VM': {'alias': u'data-transmit1', 'tag_state': 'Running'},
 'i-15-1854-VM': {'alias': u'gdupc-ftp', 'tag_state': 'Running'},
 'i-15-1863-VM': {'alias': u'SJZX28', 'tag_state': 'Running'},
 'i-15-1864-VM': {'alias': u'SJZX35', 'tag_state': 'Running'},
 'i-15-1867-VM': {'alias': u'rdp-demo', 'tag_state': 'Running'},
 'i-15-1900-VM': {'alias': u'SJZX36',
                  'tag_port_tcp': 'tcp_80',
                  'tag_state': 'Running'},
 'i-15-1901-VM': {'alias': u'stop-tmp-SJZX37', 'tag_state': 'Running'},
 'i-15-1918-VM': {'alias': u'(no)SJZX38', 'tag_state': 'Running'},
 'i-15-1967-VM': {'alias': u'SJZX39', 'tag_state': 'Running'},
 'i-15-1996-VM': {'alias': u'modbus03', 'tag_state': 'Running'},
 'i-15-2011-VM': {'alias': u'SJZX40', 'tag_state': 'Running'},
 'i-15-2012-VM': {'alias': u'SJZX41', 'tag_state': 'Running'},
 'i-15-2013-VM': {'alias': u'SJZX42', 'tag_state': 'Running'},
 'i-15-2152-VM': {'alias': u'gdzs-winddata', 'tag_state': 'Running'}})
