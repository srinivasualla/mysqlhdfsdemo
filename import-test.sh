#!/usr/bin/env bash

sqoop import --connect jdbc:mysql://localhost:3306/sqoop \
--username root \
--password cloudera \
--split-by id \
--columns id,name \
--table customer  \
--target-dir /user/cloudera/raw/customers \
--fields-terminated-by "," \
--hive-import \
--create-hive-table \
--hive-table workspace.customers \
