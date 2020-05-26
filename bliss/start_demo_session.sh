#!/bin/bash

source /opt/conda/bin/activate demoenv
TANGO_HOST=localhost:10000 bliss -s demo_session
$SHELL
