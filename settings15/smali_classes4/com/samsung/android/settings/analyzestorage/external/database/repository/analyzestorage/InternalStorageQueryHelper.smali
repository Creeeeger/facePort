.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/InternalStorageQueryHelper;
.super Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getDomainType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getRootPath()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getInternalStoragePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStorageName()Ljava/lang/String;
    .locals 0

    const-string p0, "internal"

    return-object p0
.end method
