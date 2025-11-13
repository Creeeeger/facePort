.class Lcom/samsung/android/allshare/FileReceiverImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "FileReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FileReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/FileReceiverImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/FileReceiverImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 318
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist notifyListResponse(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "errStr":Ljava/lang/String;
    const-string v4, "BUNDLE_STRING_NAME"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "name":Ljava/lang/String;
    const-string v5, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 340
    .local v11, "sessionId":Ljava/lang/String;
    const-string v5, "BUNDLE_STRING_UNIQUEKEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 342
    .local v12, "uniqueKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sessionID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FileReceiverImpl"

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v13

    .line 347
    .local v13, "err":Lcom/samsung/android/allshare/ERROR;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    .line 349
    .local v14, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 350
    const-string v5, "notifyListResponse() ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v5, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v5, v12}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetTimeKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v5

    .line 354
    .local v5, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v5, :cond_0

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Null pointer Error!, uniqueKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 358
    :cond_0
    iget-object v7, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v7, v11, v5}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mputSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;)V

    .line 361
    iget-object v7, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v7, v12}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveTimeKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 363
    const/4 v7, 0x0

    .line 365
    .local v7, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    iget-object v8, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v8, v11}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v15

    .line 367
    .end local v5    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .local v15, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v15, :cond_1

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Null pointer Error!, sessionId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void

    .line 372
    :cond_1
    invoke-virtual {v15}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v16

    .line 374
    .end local v7    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .local v16, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    nop

    .line 375
    const-string v5, "BUNDLE_STRING_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 377
    .local v17, "contentUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v17, :cond_2

    .line 378
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 379
    .local v7, "uriPath":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v7    # "uriPath":Ljava/lang/String;
    :cond_2
    if-eqz v16, :cond_3

    .line 382
    iget-object v5, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v6

    move-object/from16 v5, v16

    move-object v7, v11

    move-object v8, v14

    move-object v9, v4

    move-object v10, v13

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_1

    .line 384
    :cond_3
    const-string v5, "onReceiveResponseReceived listener is null!"

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 386
    .end local v15    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .end local v16    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v17    # "contentUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v5, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyListResponse() ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL  sessionID : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v5, 0x0

    .line 393
    .local v5, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    iget-object v7, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v7, v11}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v7

    .line 394
    .local v7, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v7, :cond_5

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null pointer Error!, sessionId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void

    .line 399
    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v5

    .line 401
    if-eqz v5, :cond_6

    .line 402
    const-string v8, "listener.onCancelResponseReceived( mReceiver, sessionId, err )"

    invoke-static {v6, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v6

    invoke-interface {v5, v6, v11, v13}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;->onCancelResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 406
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$misCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v7}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->removed()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 408
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6, v11}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 410
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mreleaseCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)V

    goto :goto_2

    .line 413
    :cond_6
    const-string v8, "onCancelResponseReceived listener is null!"

    invoke-static {v6, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 386
    .end local v5    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v7    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_7
    :goto_1
    nop

    .line 415
    :cond_8
    :goto_2
    return-void
.end method

.method private blacklist notifyResponse(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 20
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "errStr":Ljava/lang/String;
    const-string v4, "BUNDLE_STRING_NAME"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "name":Ljava/lang/String;
    const-string v5, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 421
    .local v11, "sessionId":Ljava/lang/String;
    const-string v5, "BUNDLE_STRING_UNIQUEKEY"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, "uniqueKey":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v13

    .line 425
    .local v13, "err":Lcom/samsung/android/allshare/ERROR;
    const-string v5, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_RECEIVE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Null pointer Error!, sessionId="

    const-string v7, "FileReceiverImpl"

    if-eqz v5, :cond_3

    .line 426
    const-string v5, "notifyListResponse()- ACTION_FILE_RECEIVER_RECEIVE"

    invoke-static {v7, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v5, 0x0

    .line 430
    .local v5, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    iget-object v8, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v8, v12}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetTimeKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v8

    .line 431
    .local v8, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v8, :cond_0

    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null pointer Error!, uniqueKey="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void

    .line 436
    :cond_0
    iget-object v9, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v9, v11, v8}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mputSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;)V

    .line 438
    iget-object v9, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v9, v12}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveTimeKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 440
    iget-object v9, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v9, v11}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v14

    .line 441
    .end local v8    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .local v14, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v14, :cond_1

    .line 442
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void

    .line 446
    :cond_1
    invoke-virtual {v14}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v15

    .line 448
    .end local v5    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .local v15, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    const-string v5, "BUNDLE_STRING_FILE_PATH"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 449
    .local v10, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v5

    .line 450
    .local v9, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v5, "BUNDLE_STRING_URI_PATH"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 453
    .local v16, "uriPath":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v5

    .line 454
    .local v8, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    if-eqz v15, :cond_2

    .line 456
    iget-object v5, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v6

    move-object v5, v15

    move-object v7, v11

    move-object/from16 v17, v8

    .end local v8    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local v17, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v18, v9

    .end local v9    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local v18, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v9, v4

    move-object/from16 v19, v10

    .end local v10    # "filePath":Ljava/lang/String;
    .local v19, "filePath":Ljava/lang/String;
    move-object v10, v13

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 458
    .end local v17    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v18    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v19    # "filePath":Ljava/lang/String;
    .restart local v8    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v9    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .end local v8    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v10    # "filePath":Ljava/lang/String;
    .restart local v17    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v18    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v19    # "filePath":Ljava/lang/String;
    const-string v5, "onReceiveResponseReceived listener is null!"

    invoke-static {v7, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    .end local v14    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .end local v15    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v16    # "uriPath":Ljava/lang/String;
    .end local v17    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v18    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v19    # "filePath":Ljava/lang/String;
    :cond_3
    const-string v5, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_CANCEL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 461
    const-string v5, "notifyListResponse()- ACTION_FILE_RECEIVER_CANCEL"

    invoke-static {v7, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v5, 0x0

    .line 465
    .restart local v5    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    iget-object v8, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v8, v11}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object v8

    .line 466
    .local v8, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    if-nez v8, :cond_4

    .line 467
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void

    .line 472
    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v5

    .line 473
    if-eqz v5, :cond_5

    .line 474
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;

    move-result-object v6

    invoke-interface {v5, v6, v11, v13}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;->onCancelResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 476
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$misCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v8}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->removed()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 478
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6, v11}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mremoveSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    .line 480
    iget-object v6, v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$mreleaseCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)V

    goto :goto_1

    .line 483
    :cond_5
    const-string v6, "onCancelResponseReceived listener is null!"

    invoke-static {v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 460
    .end local v5    # "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .end local v8    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_6
    :goto_0
    nop

    .line 485
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 3
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 321
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/allshare/FileReceiverImpl$2;->notifyResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 324
    :cond_0
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_RECEIVER_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/allshare/FileReceiverImpl$2;->notifyResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 327
    :cond_1
    :goto_0
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    const-string v1, "FileReceiverImpl"

    const-string v2, "mRespHandler.handleResponseMessage() called.."

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/allshare/FileReceiverImpl$2;->notifyListResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 330
    :cond_2
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/allshare/FileReceiverImpl$2;->notifyListResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 333
    :cond_3
    :goto_1
    return-void
.end method
