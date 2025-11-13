.class public final Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mInternalServiceConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;

.field public mIsConnected:Z

.field public final mServiceConnection:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    new-instance v0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;-><init>(Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mServiceConnection:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disConnectService mIsConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ConnectionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "unbindService"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mServiceConnection:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->notifyServiceConnection(ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public final isServiceConnected()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isServiceConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ConnectionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    return p0
.end method

.method public final notifyServiceConnection(ILandroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyServiceConnection : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ConnectionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mInternalServiceConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 p3, 0x2

    const/4 v1, 0x0

    if-eq p1, p3, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    invoke-interface {v0}, Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;->onError()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;->onDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;->onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_3
    :goto_0
    return-void
.end method
