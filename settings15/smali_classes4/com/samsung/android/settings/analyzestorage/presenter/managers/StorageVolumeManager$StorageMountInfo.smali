.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDomainType:I

.field public mFsType:Ljava/lang/String;

.field public mMounted:Z

.field public mPath:Ljava/lang/String;

.field public mUuid:Ljava/lang/String;

.field public mVolumeId:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    iget v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mMounted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mFsType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
