.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$DeviceFeature;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static volatile sIsTablet:Ljava/lang/Boolean;


# direct methods
.method public static isTabletModel()Z
    .locals 3

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$DeviceFeature;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$DeviceFeature;->sIsTablet:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$DeviceFeature;->sIsTablet:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$DeviceFeature;->sIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
