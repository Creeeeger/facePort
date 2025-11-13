.class public final Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 2

    const-class p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/timezone/TimeZoneFinder;->getCountryZonesFinder()Lcom/android/i18n/timezone/CountryZonesFinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;-><init>(Lcom/android/i18n/timezone/CountryZonesFinder;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    return-void
.end method
