.class public Landroid/companion/virtualdevice/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/companion/virtualdevice/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/companion/virtualdevice/flags/FeatureFlags;",
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/companion/virtualdevice/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v7, "android.companion.virtualdevice.flags.virtual_display_multi_window_mode_support"

    const-string v8, ""

    const-string v1, "android.companion.virtualdevice.flags.camera_device_awareness"

    const-string v2, "android.companion.virtualdevice.flags.device_aware_drm"

    const-string v3, "android.companion.virtualdevice.flags.device_aware_record_audio_permission"

    const-string v4, "android.companion.virtualdevice.flags.intent_interception_action_matching_fix"

    const-string v5, "android.companion.virtualdevice.flags.metrics_collection"

    const-string v6, "android.companion.virtualdevice.flags.virtual_camera_service_discovery"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist cameraDeviceAwareness()Z
    .locals 2

    new-instance v0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.camera_device_awareness"

    invoke-virtual {p0, v1, v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deviceAwareDrm()Z
    .locals 2

    new-instance v0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.device_aware_drm"

    invoke-virtual {p0, v1, v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deviceAwareRecordAudioPermission()Z
    .locals 2

    new-instance v0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.device_aware_record_audio_permission"

    invoke-virtual {p0, v1, v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v5, "android.companion.virtualdevice.flags.virtual_camera_service_discovery"

    const-string v6, "android.companion.virtualdevice.flags.virtual_display_multi_window_mode_support"

    const-string v0, "android.companion.virtualdevice.flags.camera_device_awareness"

    const-string v1, "android.companion.virtualdevice.flags.device_aware_drm"

    const-string v2, "android.companion.virtualdevice.flags.device_aware_record_audio_permission"

    const-string v3, "android.companion.virtualdevice.flags.intent_interception_action_matching_fix"

    const-string v4, "android.companion.virtualdevice.flags.metrics_collection"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

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
            "Landroid/companion/virtualdevice/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist intentInterceptionActionMatchingFix()Z
    .locals 2

    new-instance v0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.intent_interception_action_matching_fix"

    invoke-virtual {p0, v1, v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist metricsCollection()Z
    .locals 2

    new-instance v0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.metrics_collection"

    invoke-virtual {p0, v1, v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist virtualCameraServiceDiscovery()Z
    .locals 2

    new-instance v0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_camera_service_discovery"

    invoke-virtual {p0, v1, v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist virtualDisplayMultiWindowModeSupport()Z
    .locals 2

    new-instance v0, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_display_multi_window_mode_support"

    invoke-virtual {p0, v1, v0}, Landroid/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
