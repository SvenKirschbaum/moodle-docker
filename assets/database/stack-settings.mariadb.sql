INSERT INTO m_config_plugins (plugin, name, value) VALUES
   ('qtype_stack', 'platform', 'server'),
   ('qtype_stack', 'maximaversion', '5.44.0'),
   ('qtype_stack', 'maximacommandserver', 'http://maxima:8080/maxima'),
   ('qtype_stack', 'maximacommand', ''),
   ('qtype_stack', 'maximacommandopt', ''),
   ('qtype_stack', 'maximalibraries', '')
ON DUPLICATE KEY UPDATE value=VALUES(value);
