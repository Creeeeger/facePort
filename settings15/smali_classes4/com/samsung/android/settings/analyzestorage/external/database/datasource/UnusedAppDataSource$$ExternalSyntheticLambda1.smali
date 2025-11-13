.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

.field public final synthetic f$1:Landroid/content/pm/PackageManager;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/app/usage/StorageStatsManager;

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;Landroid/content/pm/PackageManager;JLandroid/app/usage/StorageStatsManager;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManager;

    iput-wide p3, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$3:Landroid/app/usage/StorageStatsManager;

    iput-object p6, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManager;

    iget-wide v2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$2:J

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$3:Landroid/app/usage/StorageStatsManager;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v2, v5, v2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_0
    sub-long/2addr v5, v7

    const-wide v9, 0x9a7ec800L

    cmp-long p0, v5, v9

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-lez p0, :cond_1

    move p0, v5

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    const/4 v6, 0x0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    cmp-long v2, v2, v9

    if-lez v2, :cond_3

    if-eqz p0, :cond_3

    move v0, v5

    :cond_3
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->setLastLaunchTime(J)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->setUnusedApps(Z)V

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->setLabel(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v4, v0, p1, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPackageStorageStats ] : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageManageHelper"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->setPackageAppByte(J)V

    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v0

    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->setSize(J)V

    :cond_4
    move-object v6, p0

    :goto_3
    return-object v6
.end method
