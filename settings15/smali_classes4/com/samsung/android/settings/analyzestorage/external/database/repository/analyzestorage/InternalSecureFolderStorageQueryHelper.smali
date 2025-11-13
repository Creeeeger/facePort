.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/InternalSecureFolderStorageQueryHelper;
.super Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getDomainType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getRootPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getInternalSecureFolderStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStorageName()Ljava/lang/String;
    .locals 0

    const-string p0, "internal_secure_folder"

    return-object p0
.end method

.method public final getTrashCapacity()[J
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->getTrashCapacityFromMyFiles()[J

    move-result-object p0

    return-object p0
.end method

.method public final getUserId()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/LocalStorageQueryHelper;->mContext:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getSecureFolderUserId(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    const-string/jumbo p0, "sUserInfoChecker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
