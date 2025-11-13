.class Lcom/samsung/android/allshare/ReceiverImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "ReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ReceiverImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ReceiverImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ReceiverImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/allshare/ReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 20
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 65
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "actionID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 67
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "ReceiverImpl"

    if-nez v3, :cond_0

    .line 68
    const-string v0, "mEventHandler bundle is NULL!"

    invoke-static {v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/allshare/ReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ReceiverImpl;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/allshare/ReceiverImpl;)Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    return-void

    .line 74
    :cond_1
    const-string v0, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "errStr":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 76
    .local v0, "error":Lcom/samsung/android/allshare/ERROR;
    if-nez v5, :cond_2

    .line 77
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    move-object v13, v0

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v5}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v0

    move-object v13, v0

    .line 81
    .end local v0    # "error":Lcom/samsung/android/allshare/ERROR;
    .local v13, "error":Lcom/samsung/android/allshare/ERROR;
    :goto_0
    const-string v0, "com.sec.android.allshare.event.EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "BUNDLE_PARCELABLE_ITEM"

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "BUNDLE_LONG_PROGRESS"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 83
    .local v14, "receivedSize":J
    const-string v0, "BUNDLE_LONG_TOTAL_SIZE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 84
    .local v16, "totalSize":J
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 86
    .local v12, "itemBundle":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/samsung/android/allshare/ReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-virtual {v0, v12}, Lcom/samsung/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v18

    .line 88
    .local v18, "item":Lcom/samsung/android/allshare/Item;
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/allshare/ReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ReceiverImpl;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/allshare/ReceiverImpl;)Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-wide v7, v14

    move-wide/from16 v9, v16

    move-object/from16 v11, v18

    move-object/from16 v19, v12

    .end local v12    # "itemBundle":Landroid/os/Bundle;
    .local v19, "itemBundle":Landroid/os/Bundle;
    move-object v12, v13

    :try_start_1
    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;->onProgressUpdated(JJLcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 92
    :catch_0
    move-exception v0

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    goto :goto_2

    .line 92
    .end local v19    # "itemBundle":Landroid/os/Bundle;
    .restart local v12    # "itemBundle":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object/from16 v19, v12

    .line 93
    .end local v12    # "itemBundle":Landroid/os/Bundle;
    .local v0, "err":Ljava/lang/Error;
    .restart local v19    # "itemBundle":Landroid/os/Bundle;
    :goto_1
    const-string v6, "mEventHandler(EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM) Error "

    invoke-static {v4, v6, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_4

    .line 89
    .end local v0    # "err":Ljava/lang/Error;
    .end local v19    # "itemBundle":Landroid/os/Bundle;
    .restart local v12    # "itemBundle":Landroid/os/Bundle;
    :catch_3
    move-exception v0

    move-object/from16 v19, v12

    .line 90
    .end local v12    # "itemBundle":Landroid/os/Bundle;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "itemBundle":Landroid/os/Bundle;
    :goto_2
    const-string v6, "mEventHandler(EVENT_RECEIVER_PROGRESS_UPDATE_BY_ITEM) Exception "

    invoke-static {v4, v6, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 97
    .end local v14    # "receivedSize":J
    .end local v16    # "totalSize":J
    .end local v18    # "item":Lcom/samsung/android/allshare/Item;
    .end local v19    # "itemBundle":Landroid/os/Bundle;
    :goto_4
    goto :goto_7

    :cond_3
    const-string v0, "com.sec.android.allshare.event.EVENT_RECEIVER_COMPLETED_BY_ITEM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 99
    .local v6, "itemBundle":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/samsung/android/allshare/ReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-virtual {v0, v6}, Lcom/samsung/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v7

    .line 101
    .local v7, "item":Lcom/samsung/android/allshare/Item;
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/allshare/ReceiverImpl$1;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ReceiverImpl;->-$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/allshare/ReceiverImpl;)Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

    move-result-object v0

    invoke-interface {v0, v7, v13}, Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;->onCompleted(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    .line 105
    :catch_4
    move-exception v0

    .line 106
    .local v0, "err":Ljava/lang/Error;
    const-string v8, "mEventHandler(EVENT_RECEIVER_COMPLETED_BY_ITEM) Error "

    invoke-static {v4, v8, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_6

    .line 102
    .end local v0    # "err":Ljava/lang/Error;
    :catch_5
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "mEventHandler(EVENT_RECEIVER_COMPLETED_BY_ITEM) Exception "

    invoke-static {v4, v8, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    nop

    .line 110
    .end local v6    # "itemBundle":Landroid/os/Bundle;
    .end local v7    # "item":Lcom/samsung/android/allshare/Item;
    :goto_6
    nop

    .line 113
    :goto_7
    return-void

    .line 111
    :cond_4
    return-void
.end method
