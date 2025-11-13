.class public abstract Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getSystemPartitionSize(I)J
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getRootPath(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->correctionStorageSize(J)J

    move-result-wide v0

    sub-long v1, v0, v3

    :cond_1
    return-wide v1
.end method

.method public static isSupportCapacityOfSubUsers(I)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isUserOwner() ] Exception e : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UserInfoCheckerImpl"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "StorageManageHelper"

    const-string v1, "isSupportCapacityOfSubUsers ] this is only supported in Owner User."

    invoke-static {p0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const-string/jumbo p0, "sUserInfoChecker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
