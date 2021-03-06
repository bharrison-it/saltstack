#!/usr/bin/env python
import salt.config
import salt.loader

__opts__ = salt.config.minion_config('/etc/salt/minion')
__grains__ = salt.loader.grains(__opts__)
__opts__['grains'] = __grains__
__salt__ = salt.loader.minion_mods(__opts__)
__salt__['test.ping']()
