#!/bin/sh
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

if [ "$BTREE4J_HOME" = "" ]; then
  if [ -e ../bin/${0##*/} ]; then
    BTREE4J_HOME=".."
  elif [ -e ./bin/${0##*/} ]; then
    BTREE4J_HOME="."
  else
    echo "env BTREE4J_HOME not defined"
    exit 1
  fi
fi

cd $BTREE4J_HOME
BTREE4J_HOME=`pwd`

mvn clean spotless:apply
