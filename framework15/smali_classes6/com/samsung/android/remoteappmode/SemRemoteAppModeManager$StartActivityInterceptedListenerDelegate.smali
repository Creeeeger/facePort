.class Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;
.super Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartActivityInterceptedListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    return-void
.end method

.method public blacklist onStartActivityIntercepted(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ActivityInfo;IZIII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    move-object v2, p0

    :try_start_0
    iget-object v0, v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartActivityIntercepted() interceptedDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v12, p4

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;->onStartActivityIntercepted(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ActivityInfo;IZIII)V

    goto :goto_0

    :cond_0
    move/from16 v12, p4

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move/from16 v12, p4

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
