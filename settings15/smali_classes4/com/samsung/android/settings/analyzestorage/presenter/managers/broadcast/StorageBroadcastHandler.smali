.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$1;

.field public final mHandler:Landroid/os/Handler;

.field public mNotifyBroadcastListener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$NotifyBroadcastListener;

.field public final mPendingEjectIntentMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;->mPendingEjectIntentMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final notifyStorageBroadcast(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "path"

    iget-object v2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domainType"

    iget v2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyStorageBroadcast() ] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , domainType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "StorageBroadcastHandler"

    invoke-static {v1, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;->mNotifyBroadcastListener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$NotifyBroadcastListener;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->notifyDynamicBroadcast(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
