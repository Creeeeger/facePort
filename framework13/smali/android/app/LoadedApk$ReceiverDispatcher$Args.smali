.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private greylist-max-o mCurIntent:Landroid/content/Intent;

.field private greylist-max-o mDispatched:Z

.field private blacklist mHandleOnSystemMainOLOGThresMs:J

.field private final greylist-max-o mOrdered:Z

.field private blacklist mRunCalled:Z

.field final synthetic blacklist this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor blacklist <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 12
    .param p1, "this$0"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I

    .line 1861
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1862
    nop

    .line 1863
    iget-boolean v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v4, v0

    iget-object v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 1864
    invoke-virtual {v0}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    .line 1862
    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    .line 1857
    const-wide/16 v0, 0x64

    iput-wide v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mHandleOnSystemMainOLOGThresMs:J

    .line 1865
    move-object v0, p2

    iput-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1866
    move/from16 v1, p6

    iput-boolean v1, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1867
    return-void
.end method


# virtual methods
.method public final greylist-max-o getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1870
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V

    return-object v0
.end method

.method synthetic blacklist lambda$getRunnable$0$android-app-LoadedApk$ReceiverDispatcher$Args()V
    .locals 17

    .line 1871
    move-object/from16 v1, p0

    const-string v2, " ms, Receiver = "

    const-string v3, " took "

    iget-object v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v4, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1872
    .local v4, "receiver":Landroid/content/BroadcastReceiver;
    iget-boolean v5, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1882
    .local v5, "ordered":Z
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1883
    .local v6, "mgr":Landroid/app/IActivityManager;
    iget-object v7, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1884
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "LoadedApk"

    if-nez v7, :cond_1

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null intent being dispatched, mDispatched="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1886
    iget-boolean v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    if-eqz v9, :cond_0

    const-string v9, ", run() has already been called"

    goto :goto_0

    :cond_0
    const-string v9, ""

    :goto_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1885
    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    .line 1891
    iput-boolean v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    .line 1892
    if-eqz v4, :cond_a

    if-eqz v7, :cond_a

    iget-object v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 1902
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1903
    .local v9, "dispatchStart":J
    const-wide/16 v11, 0x40

    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "broadcastReceiveReg: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v13, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v13, v13, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", for "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1905
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1904
    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1910
    :cond_3
    :try_start_0
    iget-object v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1911
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1914
    invoke-static {v7}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v13

    iget-object v14, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v14, v14, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 1915
    invoke-virtual {v14}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v14

    .line 1914
    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 1916
    invoke-virtual {v1, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1917
    invoke-virtual {v4, v1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 1918
    iget-object v13, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v13, v13, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    goto :goto_1

    .line 1919
    :catch_0
    move-exception v0

    .line 1920
    .local v0, "e":Ljava/lang/Exception;
    iget-object v13, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v13, v13, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v13, :cond_4

    if-eqz v5, :cond_4

    .line 1923
    invoke-virtual {v1, v6}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1925
    :cond_4
    iget-object v13, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v13, v13, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v13, :cond_9

    iget-object v13, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v13, v13, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v14, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v14, v14, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1926
    invoke-virtual {v13, v14, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1934
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1935
    invoke-virtual/range {p0 .. p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    .line 1937
    :cond_5
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1940
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1941
    .local v11, "dispatchEnd":J
    sub-long v13, v11, v9

    .line 1944
    .local v13, "handleTime":J
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isPerfLogEnable()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1945
    .local v0, "mPerfLogEnable":Z
    if-eqz v0, :cond_6

    move-wide v15, v9

    .end local v9    # "dispatchStart":J
    .local v15, "dispatchStart":J
    :try_start_2
    iget-wide v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mHandleOnSystemMainOLOGThresMs:J

    cmp-long v9, v13, v9

    if-lez v9, :cond_7

    .line 1947
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " system_server main thread handled for "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1948
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1947
    const/4 v10, 0x5

    invoke-static {v10, v9}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 1951
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Slow system_server main thread handled for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1952
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v3, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1951
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1966
    .end local v0    # "mPerfLogEnable":Z
    :catch_1
    move-exception v0

    goto :goto_3

    .line 1945
    .end local v15    # "dispatchStart":J
    .restart local v0    # "mPerfLogEnable":Z
    .restart local v9    # "dispatchStart":J
    :cond_6
    move-wide v15, v9

    .line 1968
    .end local v0    # "mPerfLogEnable":Z
    .end local v9    # "dispatchStart":J
    .restart local v15    # "dispatchStart":J
    :cond_7
    :goto_2
    goto :goto_4

    .line 1966
    .end local v15    # "dispatchStart":J
    .restart local v9    # "dispatchStart":J
    :catch_2
    move-exception v0

    move-wide v15, v9

    .line 1967
    .end local v9    # "dispatchStart":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "dispatchStart":J
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 1926
    .end local v11    # "dispatchEnd":J
    .end local v13    # "handleTime":J
    .end local v15    # "dispatchStart":J
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v9    # "dispatchStart":J
    :cond_8
    move-wide v15, v9

    .end local v9    # "dispatchStart":J
    .restart local v15    # "dispatchStart":J
    goto :goto_5

    .line 1925
    .end local v15    # "dispatchStart":J
    .restart local v9    # "dispatchStart":J
    :cond_9
    move-wide v15, v9

    .line 1927
    .end local v9    # "dispatchStart":J
    .restart local v15    # "dispatchStart":J
    :goto_5
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1928
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error receiving broadcast "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " in "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1893
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "dispatchStart":J
    :cond_a
    :goto_6
    iget-object v0, v1, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_b

    if-eqz v5, :cond_b

    .line 1896
    invoke-virtual {v1, v6}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1898
    :cond_b
    return-void
.end method
