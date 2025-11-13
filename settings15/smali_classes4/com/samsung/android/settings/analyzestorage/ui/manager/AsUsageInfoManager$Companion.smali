.class public final Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
