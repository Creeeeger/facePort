.class public final Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;
.super Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;-><init>()V

    const-string v0, "UnusedAppDataSource"

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getUnusedAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->getTargetAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "0MB"

    invoke-static {p1, v2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/SettingStatusPreferenceUtils;->setInternalUnusedApplicationInfo(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide v4, 0x73df16000L

    sub-long v5, v7, v4

    const/4 v4, 0x2

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_1

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v9}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v1, "setup_wizard_complete_time"

    const-wide/16 v2, -0x1

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createUnusedAppInfoList()] setupWizardCompleteTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;Landroid/content/pm/PackageManager;JLandroid/app/usage/StorageStatsManager;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final isSuitableTargetApp(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method
