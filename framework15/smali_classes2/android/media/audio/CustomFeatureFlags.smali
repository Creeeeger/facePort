.class public Landroid/media/audio/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/media/audio/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/media/audio/FeatureFlags;",
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
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/media/audio/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v14, "android.media.audio.volume_ringer_api_hardening"

    const-string v15, ""

    const-string v2, "android.media.audio.auto_public_volume_api_hardening"

    const-string v3, "android.media.audio.automatic_bt_device_type"

    const-string v4, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    const-string v5, "android.media.audio.focus_exclusive_with_recording"

    const-string v6, "android.media.audio.focus_freeze_test_api"

    const-string v7, "android.media.audio.foreground_audio_control"

    const-string v8, "android.media.audio.loudness_configurator_api"

    const-string v9, "android.media.audio.mute_background_audio"

    const-string v10, "android.media.audio.ro_foreground_audio_control"

    const-string v11, "android.media.audio.ro_volume_ringer_api_hardening"

    const-string v12, "android.media.audio.sco_managed_by_audio"

    const-string v13, "android.media.audio.supported_device_types_api"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist autoPublicVolumeApiHardening()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.media.audio.auto_public_volume_api_hardening"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist automaticBtDeviceType()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.media.audio.automatic_bt_device_type"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist featureSpatialAudioHeadtrackingLowLatency()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist focusExclusiveWithRecording()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.media.audio.focus_exclusive_with_recording"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist focusFreezeTestApi()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.media.audio.focus_freeze_test_api"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist foregroundAudioControl()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.media.audio.foreground_audio_control"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v11, "android.media.audio.supported_device_types_api"

    const-string v12, "android.media.audio.volume_ringer_api_hardening"

    const-string v0, "android.media.audio.auto_public_volume_api_hardening"

    const-string v1, "android.media.audio.automatic_bt_device_type"

    const-string v2, "android.media.audio.feature_spatial_audio_headtracking_low_latency"

    const-string v3, "android.media.audio.focus_exclusive_with_recording"

    const-string v4, "android.media.audio.focus_freeze_test_api"

    const-string v5, "android.media.audio.foreground_audio_control"

    const-string v6, "android.media.audio.loudness_configurator_api"

    const-string v7, "android.media.audio.mute_background_audio"

    const-string v8, "android.media.audio.ro_foreground_audio_control"

    const-string v9, "android.media.audio.ro_volume_ringer_api_hardening"

    const-string v10, "android.media.audio.sco_managed_by_audio"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

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
            "Landroid/media/audio/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/audio/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/audio/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/audio/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist loudnessConfiguratorApi()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.media.audio.loudness_configurator_api"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist muteBackgroundAudio()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.media.audio.mute_background_audio"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist roForegroundAudioControl()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.media.audio.ro_foreground_audio_control"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist roVolumeRingerApiHardening()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.media.audio.ro_volume_ringer_api_hardening"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist scoManagedByAudio()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.media.audio.sco_managed_by_audio"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportedDeviceTypesApi()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.media.audio.supported_device_types_api"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist volumeRingerApiHardening()Z
    .locals 2

    new-instance v0, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/media/audio/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.media.audio.volume_ringer_api_hardening"

    invoke-virtual {p0, v1, v0}, Landroid/media/audio/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
