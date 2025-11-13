.class public Lcom/samsung/android/knox/KnoxInfoImpl;
.super Ljava/lang/Object;
.source "KnoxInfoImpl.java"


# static fields
.field static final greylist INTERVAL_NANO_SEC:J = 0xb2d05e00L

.field static final greylist TAG:Ljava/lang/String; = "KnoxInfoImpl"

.field static greylist cachedTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static greylist cached_knox_info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist mKnoxInfo:Landroid/os/Bundle;

.field private static greylist m_bIsKnoxInfoInitialized:Z


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized greylist getCachedKnoxInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0xb2d05e00L

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "KnoxInfoImpl"

    const-string v2, "put into cache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static greylist getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "2.0"

    move-object v1, v2

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "version"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isSupportCallerInfo"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "KnoxInfoImpl"

    const-string v4, "failed to putString to mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "version"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static greylist getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    :cond_0
    :try_start_0
    const-string v0, "2.0"

    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isSupportMoveTo"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxInfoImpl"

    const-string v2, "failed to get knox info for APP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public static greylist getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13

    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    :try_start_1
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "userId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    const/4 v3, 0x1

    if-nez v2, :cond_8

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxMode"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "KnoxInfoImpl"

    const-string v5, "getService() returns null, set isBlockExternalSD to true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockBluetoothMenu"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isSamsungAccountBlocked"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v4, "KnoxInfoImpl"

    const-string v5, "getService() returns null, set isBlockExternalSD to false. (DO)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isBlockExternalSD"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    :cond_8
    const-string v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "KnoxInfoImpl"

    const-string v4, "ERROR | invalid request, isSupportMoveTo"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxModeActive"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxModeActive"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_2
    const-string v2, "isSecureFolderExist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_c

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_3
    const-string v2, "isSmartSwitchBnRAvailable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_e

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_4
    const-string v2, "getContainerLabel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    if-nez v2, :cond_10

    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getWorkProfileUserId()I

    move-result v4

    move v2, v4

    :cond_10
    invoke-static {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getContainerLabel"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v2, "getContainerAppIcon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v2

    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "getContainerAppIcon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_12
    const-string v2, "getPersonalModeLabel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    const/4 v2, 0x0

    :cond_13
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "getPersonalModeLabel"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v2, "getActiveUserId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_15

    :try_start_2
    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v5

    goto :goto_5

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "KnoxInfoImpl"

    const-string v7, "failed to get focused Knox id"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_5
    sget-object v5, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getActiveUserId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_16
    const-string v2, "getWorkInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1a

    if-eqz v2, :cond_1a

    :try_start_4
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_19

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_18

    const/16 v8, 0x96

    if-lt v7, v8, :cond_17

    goto :goto_7

    :cond_17
    sget-object v8, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v9, "getWorkId"

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_18
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_19
    goto :goto_8

    :catch_1
    move-exception v5

    :try_start_5
    const-string v6, "KnoxInfoImpl"

    const-string v7, "failed getWorkInfo:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_8
    const-string v2, "getAllPersonaInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v7, "getContainerCount"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_1d

    :try_start_6
    invoke-virtual {v6, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1c

    sget-object v8, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v9, "getContainerCount"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v8, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1c

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v10

    move-object v2, v10

    invoke-static {p0, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getContainerOrder_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :cond_1b
    const-string v10, "KnoxInfoImpl"

    const-string v11, "getUserInfo returns null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getContainerOrder_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_a
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getContainerId_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getContainerLabel_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getContainerAppIcon_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isSecureFolder_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    :cond_1c
    goto :goto_b

    :catch_2
    move-exception v3

    :try_start_7
    const-string v7, "KnoxInfoImpl"

    const-string v8, "failed to get container info:"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v7, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v8, "getContainerCount"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    :goto_b
    const-string v2, "isSupportSecureFolder"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportSecureFolder"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1e
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1f
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_c
    const-string v2, "isSupportImpKeyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isSupportImpKeyguard"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_21
    goto :goto_d

    :catch_3
    move-exception v2

    :try_start_8
    const-string v3, "KnoxInfoImpl"

    const-string v4, "failed to get mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method private static greylist getPersonalModeName(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KnoxInfoImpl"

    const-string v2, "getPersonalModeName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getWorkProfileUserId()I
    .locals 10

    const-string v0, ":"

    const-string v1, ","

    const-string v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-nez v9, :cond_0

    and-int/lit8 v9, v8, 0x20

    if-lez v9, :cond_0

    return v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
