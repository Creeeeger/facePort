.class public final Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;


# static fields
.field public static volatile sInstance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUnusedAppBnRInfoDao:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

.field public final mUnusedAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    invoke-direct {p1}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mUnusedAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mUnusedAppBnRInfoDao:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    return-void
.end method


# virtual methods
.method public final getAppInfoList()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mUnusedAppDataSource:Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/UnusedAppDataSource;->getUnusedAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "manage_storage_smart_switch_restore_time"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0x9a7ec800L

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->isUnusedApps()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mUnusedAppBnRInfoDao:Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5}, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lcom/samsung/android/settings/analyzestorage/data/database/dao/UnusedAppBnRInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x1

    invoke-static {v5, v6, v2, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppBnRInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->setUnusedApps(Z)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restoreUnusedAppInfoFromBnr ] restore size : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", names : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnusedAppInfoRepositoryImpl"

    invoke-static {v3, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "sort_type_unused_apps"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v1, :cond_4

    const/4 v1, 0x2

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v3, v2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v1, "sort_order_unused_apps"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/ComparatorFactory;->getAppSortComparator(IZ)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
