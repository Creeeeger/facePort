.class Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
.super Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemWifiApSmartCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;-><init>()V

    .line 923
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mLock:Ljava/lang/Object;

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 931
    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 932
    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$0(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;ILjava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    .param p1, "state"    # I
    .param p2, "mhsMac"    # Ljava/lang/String;

    .line 967
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist cleanUpProxy()V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 945
    iput-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 946
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 936
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 937
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 938
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 939
    monitor-exit v0

    .line 940
    return-void

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "mhsMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    const-string v0, "SemWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartCallbackProxy: onStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 961
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->mCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 962
    .local v2, "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 966
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 967
    new-instance v0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;ILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 968
    return-void

    .line 964
    :cond_1
    :goto_0
    return-void

    .line 962
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
