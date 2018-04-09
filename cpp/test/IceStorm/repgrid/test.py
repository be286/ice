# -*- coding: utf-8 -*-
# **********************************************************************
#
# Copyright (c) 2003-2018 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

if os.getuid() != 0:
    TestSuite(__file__, [ IceGridTestCase(icegridregistry=IceGridRegistryMaster(),
                                          client=IceGridClient()) ],
              runOnMainThread=True, multihost=False)
