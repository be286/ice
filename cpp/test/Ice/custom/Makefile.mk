# **********************************************************************
#
# Copyright (c) 2003-2018 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

$(test)_client_sources          = Client.cpp \
                                  AllTests.cpp \
                                  Test.ice \
                                  Wstring.ice \
                                  MyByteSeq.cpp \
                                  StringConverterI.cpp

$(test)_server_sources          = Server.cpp \
                                  TestI.cpp \
                                  WstringI.cpp \
                                  Test.ice \
                                  Wstring.ice \
                                  MyByteSeq.cpp \
                                  StringConverterI.cpp

$(test)_serveramd_sources       = ServerAMD.cpp \
                                  TestAMDI.cpp \
                                  WstringAMDI.cpp \
                                  TestAMD.ice \
                                  WstringAMD.ice \
                                  MyByteSeq.cpp \
                                  StringConverterI.cpp

#
# Disable var tracking assignments for Linux with this test
#
ifneq ($(linux_id),)
    $(test)_cppflags += $(if $(filter yes,$(OPTIMIZE)),-fno-var-tracking-assignments)
endif

tests += $(test)
