.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string v1, "StorageBroadcastHandler"

    const-string v2, "handleUnMount() ] mount info is empty. First updateStorageMountState, and reload mount info. "

    invoke-static {v1, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->updateStorageMountState(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->getMountInfoByUuid(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;

    move-result-object p0

    return-object p0
.end method
