#!/bin/bash
zip repository.smallplayer.zip repository.smallplayer
cd repo
python ../addons_xml_generator.py
cd ..
