﻿#!/bin/sh

cd ../../

make test

./bin/test_wdProperty

WD_PROPERTY=$?

./bin/test_limit

WD_LIMIT=$?

./bin/test_node

WD_NODE=$?

./bin/test_step

WD_STEP=$?

echo "\n*************************************************************************\n"

if [ ${WD_PROPERTY} -ne 0 ]
then
	echo "wilddog property test failed, please run test_wdProperty to find more information!"
else
	echo "wilddog property test pass!"
fi

if [ ${WD_LIMIT} -ne 0 ]
then
	echo "wilddog limit test failed, please run test_limit to find more information!"
else
	echo "wilddog limit test pass!"
fi

if [ ${WD_NODE} -ne 0 ]
then
	echo "wilddog node test failed, please run test_node to find more information!"
else
	echo "wilddog node test pass!"
fi

if [ ${WD_STEP} -ne 0 ]
then
	echo "wilddog step test failed, please run test_step to find more information!"
else
	echo "wilddog step test pass!"
fi

echo "\n*************************************************************************\n"
