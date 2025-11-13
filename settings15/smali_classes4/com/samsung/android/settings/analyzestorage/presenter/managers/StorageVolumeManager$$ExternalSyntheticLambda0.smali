.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IILcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    const-string v3, "StorageVolumeManager"

    const-string v4, "manageExternalStorage() ] FAIL : can\'t find the device. (domainType : "

    const-string v5, "manageExternalStorage() ] mVolumeId : "

    const-string v6, "manageExternalStorage() ] Request ["

    :try_start_0
    const-string/jumbo v7, "storage"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->getMountInfoByDomainType(I)Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] - [Mount:0|Unmount:1|Format:2]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v8, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , Target Device Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->getDeviceNameByDomainType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v8, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v4, v8, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, v8, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/os/storage/StorageManager;->mount(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->onSuccess(Landroid/content/Context;II)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , operationType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " manageExternalStorage() ] SecurityException e : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " manageExternalStorage() ] IllegalArgumentException e : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
