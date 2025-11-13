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

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized greylist getCachedKnoxInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    .line 31
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

    .line 32
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 34
    :cond_0
    :try_start_1
    const-string v1, "KnoxInfoImpl"

    const-string/jumbo v2, "put into cache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "ret":Landroid/os/Bundle;
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->cached_knox_info:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit v0

    return-object v1

    .line 30
    .end local v1    # "ret":Landroid/os/Bundle;
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static greylist getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    .line 49
    const-class v0, Lcom/samsung/android/knox/KnoxInfoImpl;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 57
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "2.0"

    move-object v1, v2

    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "1.0"

    move-object v1, v2

    .line 64
    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_2
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isSupportCallerInfo"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_2

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "KnoxInfoImpl"

    const-string v4, "failed to putString to mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    .line 75
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
    .param p0, "ctx"    # Landroid/content/Context;

    .line 294
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    .line 299
    :cond_0
    :try_start_0
    const-string v0, "2.0"

    sget-object v1, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "isSupportMoveTo"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_1
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxInfoImpl"

    const-string v2, "failed to get knox info for APP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public static greylist getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .line 94
    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    monitor-enter v0

    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "userid":I
    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getKnoxInfo()Landroid/os/Bundle;

    .line 101
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 105
    :try_start_1
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    sget-boolean v2, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    const/4 v3, 0x1

    if-nez v2, :cond_8

    .line 108
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxMode"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    .line 111
    .local v2, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v2, :cond_2

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v4, "KnoxInfoImpl"

    const-string v5, "getService() returns null, set isBlockExternalSD to true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockBluetoothMenu"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isSamsungAccountBlocked"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_3
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    .line 127
    .restart local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v2, :cond_5

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/sec/enterprise/IEDMProxy;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_4
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_5
    const-string v4, "KnoxInfoImpl"

    const-string v5, "getService() returns null, set isBlockExternalSD to false. (DO)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isBlockExternalSD"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 140
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isBlockExternalSD"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_7
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sput-boolean v3, Lcom/samsung/android/knox/KnoxInfoImpl;->m_bIsKnoxInfoInitialized:Z

    .line 148
    :cond_8
    const-string v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 149
    const-string v2, "KnoxInfoImpl"

    const-string v4, "ERROR | invalid request, isSupportMoveTo"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_9
    const-string v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 153
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 154
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxModeActive"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    :cond_a
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKnoxModeActive"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_b
    :goto_2
    const-string v2, "isSecureFolderExist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 161
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_c

    .line 162
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 164
    :cond_c
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_d
    :goto_3
    const-string v2, "isSmartSwitchBnRAvailable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 168
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_e

    .line 169
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 171
    :cond_e
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSecureFolderExist"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_f
    :goto_4
    const-string v2, "getContainerLabel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 176
    move v2, v1

    .line 177
    .local v2, "id":I
    if-nez v2, :cond_10

    .line 178
    invoke-static {}, Lcom/samsung/android/knox/KnoxInfoImpl;->getWorkProfileUserId()I

    move-result v4

    move v2, v4

    .line 181
    :cond_10
    invoke-static {p0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "containerName":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getContainerLabel"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v2    # "id":I
    .end local v4    # "containerName":Ljava/lang/String;
    :cond_11
    const-string v2, "getContainerAppIcon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 187
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v2

    .line 188
    .local v2, "containerAppIcon":[B
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "getContainerAppIcon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 191
    .end local v2    # "containerAppIcon":[B
    :cond_12
    const-string v2, "getPersonalModeLabel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "personalModeLabel":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/knox/KnoxInfoImpl;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 194
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    .line 195
    const/4 v2, 0x0

    .line 196
    :cond_13
    sget-object v4, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "getPersonalModeLabel"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v2    # "personalModeLabel":Ljava/lang/String;
    :cond_14
    const-string v2, "getActiveUserId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "userId":I
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .local v4, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v4, :cond_15

    .line 203
    :try_start_2
    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v5

    .line 206
    goto :goto_5

    .line 204
    :catch_0
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "KnoxInfoImpl"

    const-string v7, "failed to get focused Knox id"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_5
    sget-object v5, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v6, "getActiveUserId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    .end local v2    # "userId":I
    .end local v4    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_16
    const-string v2, "getWorkInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    .line 212
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    .line 213
    .local v2, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1a

    .line 214
    if-eqz v2, :cond_1a

    .line 216
    :try_start_4
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_19

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_19

    .line 218
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_19

    .line 219
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 220
    .local v7, "containerId":I
    if-eqz v7, :cond_18

    const/16 v8, 0x96

    if-lt v7, v8, :cond_17

    .line 221
    goto :goto_7

    .line 223
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

    .line 218
    .end local v7    # "containerId":I
    :cond_18
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 228
    .end local v5    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    :cond_19
    goto :goto_8

    .line 226
    :catch_1
    move-exception v5

    .line 227
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "KnoxInfoImpl"

    const-string v7, "failed getWorkInfo:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v2    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_8
    const-string v2, "getAllPersonaInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, "containerAppIcon":[B
    const/4 v5, 0x0

    .line 236
    .local v5, "containerName":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v7, "getContainerCount"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    .local v6, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v6, :cond_1d

    .line 240
    :try_start_6
    invoke-virtual {v6, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v7

    .line 241
    .local v7, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_1c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1c

    .line 242
    sget-object v8, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v9, "getContainerCount"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1c

    .line 244
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 245
    .local v9, "containerId":I
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v10

    move-object v2, v10

    .line 246
    invoke-static {p0, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 248
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 249
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

    .line 251
    :cond_1b
    const-string v10, "KnoxInfoImpl"

    const-string v11, "getUserInfo returns null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
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

    .line 254
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

    .line 255
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

    .line 256
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

    .line 257
    sget-object v10, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isPremiumContainer_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
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

    .line 243
    .end local v9    # "containerId":I
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 264
    .end local v7    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    :cond_1c
    goto :goto_b

    .line 261
    :catch_2
    move-exception v3

    .line 262
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v7, "KnoxInfoImpl"

    const-string v8, "failed to get container info:"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    sget-object v7, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v8, "getContainerCount"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    .end local v2    # "containerAppIcon":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "containerName":Ljava/lang/String;
    .end local v6    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_1d
    :goto_b
    const-string v2, "isSupportSecureFolder"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 269
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    .line 270
    .local v2, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v2, :cond_1f

    .line 271
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 272
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportSecureFolder"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 274
    :cond_1e
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 277
    :cond_1f
    sget-object v3, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportSecureFolder"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v2    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_20
    :goto_c
    const-string v2, "isSupportImpKeyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 281
    sget-object v2, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isSupportImpKeyguard"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 286
    :cond_21
    goto :goto_d

    .line 284
    :catch_3
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v3, "KnoxInfoImpl"

    const-string v4, "failed to get mKnoxInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v1    # "userid":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 288
    sget-object v0, Lcom/samsung/android/knox/KnoxInfoImpl;->mKnoxInfo:Landroid/os/Bundle;

    return-object v0

    .line 287
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
    .param p0, "userId"    # I

    .line 80
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v0, "customName":Ljava/lang/String;
    return-object v0

    .line 84
    .end local v0    # "customName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxInfoImpl"

    const-string v2, "getPersonalModeName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getWorkProfileUserId()I
    .locals 10

    .line 310
    const-string v0, ":"

    .line 311
    .local v0, "USER_DELIMITER":Ljava/lang/String;
    const-string v1, ","

    .line 312
    .local v1, "INFO_DELIMITER":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 315
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 317
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "info":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 319
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 320
    .local v7, "id":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, "flags":I
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-nez v9, :cond_0

    and-int/lit8 v9, v8, 0x20

    if-lez v9, :cond_0

    .line 322
    return v7

    .line 316
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "id":I
    .end local v8    # "flags":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 327
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    return v3
.end method
