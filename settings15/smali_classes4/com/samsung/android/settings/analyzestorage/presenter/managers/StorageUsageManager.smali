.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final MEDIA_PROVIDER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->MEDIA_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public static correctionStorageSize(J)J
    .locals 7

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v1

    add-long/2addr v1, p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "correctionStorageSize() ] rootDirectoryPath : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , totalSize : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " , realTotalSize : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageUsageManager"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    :cond_0
    const-wide/16 v3, 0x1

    shl-long/2addr v3, p0

    const-wide/32 v5, 0x3b9aca00

    mul-long/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    const/16 p1, 0x3f

    if-lt p0, p1, :cond_0

    :cond_1
    return-wide v3
.end method

.method public static getExternalStorageTotalSize(Landroid/app/usage/StorageStatsManager;Landroid/os/UserHandle;)J
    .locals 5

    const-string v0, "StorageUsageManager"

    const-wide/16 v1, 0x0

    :try_start_0
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {p0, v3, p1}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getExternalStorageTotalSize ] Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " \n userHandle : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    :goto_0
    cmp-long p0, v3, v1

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "getExternalStorageTotalSize ] The negative value was returned and corrected to zero. userHandle : "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_1
    return-wide v1
.end method

.method public static getLowMemoryMinPercent(Landroid/content/Context;J)F
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter$SizeString;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move v0, p1

    goto :goto_1

    :sswitch_0
    const-string p2, "512"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "256"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "128"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string p2, "64"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :sswitch_4
    const-string p2, "32"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    const/high16 p0, 0x40200000    # 2.5f

    goto :goto_2

    :pswitch_0
    const/high16 p0, 0x41200000    # 10.0f

    goto :goto_2

    :pswitch_1
    const/high16 p0, 0x40a00000    # 5.0f

    :goto_2
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65f -> :sswitch_4
        0x6be -> :sswitch_3
        0xbe37 -> :sswitch_2
        0xc253 -> :sswitch_1
        0xcd16 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getStorageFreeSpace(I)J
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSizeFromCloud(I)J

    move-result-wide v0

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageUsedSizeFromCloud(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace$1(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStorageFreeSpace$1(I)J
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/data"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getRootPath(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "StorageUsageManager"

    if-eqz p0, :cond_1

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "getStatFS ] path = "

    const-string v3, ", "

    invoke-static {v2, p0, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    goto :goto_2

    :cond_2
    const-wide/16 v1, -0x1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStorageFreeSpace() ] path : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , capacity : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public static getStorageTotalSize(I)J
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSizeFromCloud(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getRootPath(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    if-ne v5, p0, :cond_3

    :cond_2
    cmp-long v1, v3, v1

    if-lez v1, :cond_3

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->correctionStorageSize(J)J

    move-result-wide v3

    :cond_3
    const-string v1, "getStorageTotalSize() ] domainType : "

    const-string v2, " , path : "

    invoke-static {p0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , capacity : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StorageUsageManager"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method public static getStorageTotalSizeFromCloud(I)J
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;->fromDomainType(I)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object p0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->totalSize:J

    goto :goto_3

    :cond_2
    const-wide/16 v0, -0x1

    :goto_3
    return-wide v0
.end method

.method public static getStorageUsedSize(Landroid/content/Context;I)J
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isLocalStorage(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide p0

    sub-long v0, v2, p0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageUsedSizeFromExternalStorageStats(Landroid/content/Context;I)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide v0

    sub-long v0, v3, v0

    :goto_1
    invoke-static {p0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageUsedSizeFromExternalStorageStats(Landroid/content/Context;I)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageUsedSizeFromCloud(I)J

    move-result-wide p0

    return-wide p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getStorageUsedSize ] domainType("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageUsageManager"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static getStorageUsedSizeFromCloud(I)J
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;->fromDomainType(I)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object p0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->usedSize:J

    goto :goto_3

    :cond_2
    const-wide/16 v0, -0x1

    :goto_3
    return-wide v0
.end method

.method public static getStorageUsedSizeFromExternalStorageStats(Landroid/content/Context;I)J
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->mounted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    new-array v3, v3, [J

    aput-wide v1, v3, v0

    const-class v4, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/StorageStatsManager;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getUserInfoMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, p0, v3, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager$$ExternalSyntheticLambda1;-><init>(ILandroid/content/Context;[JLandroid/app/usage/StorageStatsManager;)V

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "getExternalStorageTotalSize() ] "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v3, v0

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    const-string v1, "domainType("

    const-string v2, ") is not supported."

    invoke-static {p1, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v1, v3, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageUsageManager"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-wide p0, v3, v0

    :goto_2
    return-wide p0
.end method

.method public static needToShowAppCacheList(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v1

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace$1(I)J

    move-result-wide v3

    long-to-float v5, v1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getLowMemoryMinPercent(Landroid/content/Context;J)F

    move-result p0

    mul-float/2addr p0, v5

    float-to-long v1, p0

    const-wide/16 v5, 0x64

    div-long/2addr v1, v5

    cmp-long p0, v3, v1

    if-gtz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
