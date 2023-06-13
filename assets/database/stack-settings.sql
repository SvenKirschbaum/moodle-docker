UPDATE m_config_plugins SET value='server' WHERE plugin='qtype_stack' AND name='platform';
UPDATE m_config_plugins SET value='5.44.0' WHERE plugin='qtype_stack' AND name='maximaversion';
UPDATE m_config_plugins SET value='http://maxima:8080/maxima' WHERE plugin='qtype_stack' AND name='maximacommandserver';
