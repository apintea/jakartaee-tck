/*
 * Copyright (c) 2013, 2018 Oracle and/or its affiliates. All rights reserved.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License v. 2.0, which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * This Source Code may also be made available under the following Secondary
 * Licenses when the conditions for such availability set forth in the
 * Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
 * version 2 with the GNU Classpath Exception, which is available at
 * https://www.gnu.org/software/classpath/license.html.
 *
 * SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0
 */

package com.sun.ts.tests.websocket.ee.javax.websocket.clientendpointonmessage;

import java.lang.reflect.Method;

import javax.websocket.ClientEndpoint;
import javax.websocket.CloseReason;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;

import com.sun.ts.tests.websocket.common.client.AnnotatedClientEndpoint;
import com.sun.ts.tests.websocket.common.client.StringClientEndpoint;
import com.sun.ts.tests.websocket.common.util.IOUtil;

@ClientEndpoint()
public class WSDefaultMaxLengthClientEndpoint
    extends AnnotatedClientEndpoint<String> {

  public WSDefaultMaxLengthClientEndpoint() {
    super(new StringClientEndpoint());
  }

  @OnMessage
  public String echo(String echo) {
    try {
      Method m = getClass().getMethod("echo", String.class);
      OnMessage onm = m.getAnnotation(OnMessage.class);
      long size = onm.maxMessageSize();
      String msg = String.valueOf(size);
      super.onMessage(msg);
      return msg;
    } catch (Exception e) {
      return IOUtil.printStackTrace(e);
    }
  }

  @OnError
  @Override
  public void onError(Session session, Throwable t) {
    super.onError(session, t);
  }

  @OnClose
  @Override
  public void onClose(Session session, CloseReason closeReason) {
    super.onClose(session, closeReason);
  }

  @OnOpen
  @Override
  public void onOpen(Session session, EndpointConfig config) {
    super.onOpen(session, config);
  }
}
