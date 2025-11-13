.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/SdCardQueryHelper;
.super Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getDomainType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getRootPath()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sExtSdCardPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getStorageName()Ljava/lang/String;
    .locals 0

    const-string p0, "external"

    return-object p0
.end method
