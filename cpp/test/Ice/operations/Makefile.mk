# **********************************************************************
#
# Copyright (c) 2003-2018 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

$(test)_client_sources  = Test.ice \
                          Client.cpp \
                          AllTests.cpp \
                          Twoways.cpp \
                          Oneways.cpp \
                          TwowaysAMI.cpp \
                          OnewaysAMI.cpp \
                          BatchOneways.cpp \
                          BatchOnewaysAMI.cpp

ifeq ($(xlc_compiler),yes)
    $(test)_cppflags += -qsuppress="1540-0895"
endif

#
# Disable var tracking assignments for Linux with this test
#
ifneq ($(linux_id),)
    $(test)_cppflags += $(if $(filter yes,$(OPTIMIZE)),-fno-var-tracking-assignments)
endif

tests += $(test)
