.class public Landroid/location/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/location/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/location/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/location/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v12, "android.location.flags.subscriptions_changed_listener_thread"

    const-string v13, ""

    const-string v1, "android.location.flags.enable_location_bypass"

    const-string v2, "android.location.flags.fix_service_watcher"

    const-string v3, "android.location.flags.geoid_heights_via_altitude_hal"

    const-string v4, "android.location.flags.gnss_api_measurement_request_work_source"

    const-string v5, "android.location.flags.gnss_api_navic_l1"

    const-string v6, "android.location.flags.gnss_configuration_from_resource"

    const-string v7, "android.location.flags.location_bypass"

    const-string v8, "android.location.flags.location_validation"

    const-string v9, "android.location.flags.new_geocoder"

    const-string v10, "android.location.flags.release_supl_connection_on_timeout"

    const-string v11, "android.location.flags.replace_future_elapsed_realtime_jni"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/location/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist enableLocationBypass()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.location.flags.enable_location_bypass"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixServiceWatcher()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.location.flags.fix_service_watcher"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist geoidHeightsViaAltitudeHal()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.location.flags.geoid_heights_via_altitude_hal"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v10, "android.location.flags.replace_future_elapsed_realtime_jni"

    const-string v11, "android.location.flags.subscriptions_changed_listener_thread"

    const-string v0, "android.location.flags.enable_location_bypass"

    const-string v1, "android.location.flags.fix_service_watcher"

    const-string v2, "android.location.flags.geoid_heights_via_altitude_hal"

    const-string v3, "android.location.flags.gnss_api_measurement_request_work_source"

    const-string v4, "android.location.flags.gnss_api_navic_l1"

    const-string v5, "android.location.flags.gnss_configuration_from_resource"

    const-string v6, "android.location.flags.location_bypass"

    const-string v7, "android.location.flags.location_validation"

    const-string v8, "android.location.flags.new_geocoder"

    const-string v9, "android.location.flags.release_supl_connection_on_timeout"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/location/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist gnssApiMeasurementRequestWorkSource()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.location.flags.gnss_api_measurement_request_work_source"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gnssApiNavicL1()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.location.flags.gnss_api_navic_l1"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gnssConfigurationFromResource()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.location.flags.gnss_configuration_from_resource"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/location/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/location/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist locationBypass()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.location.flags.location_bypass"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist locationValidation()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.location.flags.location_validation"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newGeocoder()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.location.flags.new_geocoder"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist releaseSuplConnectionOnTimeout()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.location.flags.release_supl_connection_on_timeout"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist replaceFutureElapsedRealtimeJni()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.location.flags.replace_future_elapsed_realtime_jni"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist subscriptionsChangedListenerThread()Z
    .locals 2

    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.location.flags.subscriptions_changed_listener_thread"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
