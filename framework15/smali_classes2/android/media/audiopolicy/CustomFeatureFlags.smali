.class public Landroid/media/audiopolicy/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/media/audiopolicy/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/media/audiopolicy/FeatureFlags;",
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
            "Landroid/media/audiopolicy/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v7, "android.media.audiopolicy.record_audio_device_aware_permission"

    const-string v8, ""

    const-string v1, "android.media.audiopolicy.audio_mix_ownership"

    const-string v2, "android.media.audiopolicy.audio_mix_policy_ordering"

    const-string v3, "android.media.audiopolicy.audio_mix_test_api"

    const-string v4, "android.media.audiopolicy.audio_policy_update_mixing_rules_api"

    const-string v5, "android.media.audiopolicy.enable_fade_manager_configuration"

    const-string v6, "android.media.audiopolicy.multi_zone_audio"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/audiopolicy/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/media/audiopolicy/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist audioMixOwnership()Z
    .locals 2

    new-instance v0, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.media.audiopolicy.audio_mix_ownership"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiopolicy/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist audioMixPolicyOrdering()Z
    .locals 2

    new-instance v0, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.media.audiopolicy.audio_mix_policy_ordering"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiopolicy/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist audioMixTestApi()Z
    .locals 2

    new-instance v0, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.media.audiopolicy.audio_mix_test_api"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiopolicy/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist audioPolicyUpdateMixingRulesApi()Z
    .locals 2

    new-instance v0, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.media.audiopolicy.audio_policy_update_mixing_rules_api"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiopolicy/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableFadeManagerConfiguration()Z
    .locals 2

    new-instance v0, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.media.audiopolicy.enable_fade_manager_configuration"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiopolicy/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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

    const-string v5, "android.media.audiopolicy.multi_zone_audio"

    const-string v6, "android.media.audiopolicy.record_audio_device_aware_permission"

    const-string v0, "android.media.audiopolicy.audio_mix_ownership"

    const-string v1, "android.media.audiopolicy.audio_mix_policy_ordering"

    const-string v2, "android.media.audiopolicy.audio_mix_test_api"

    const-string v3, "android.media.audiopolicy.audio_policy_update_mixing_rules_api"

    const-string v4, "android.media.audiopolicy.enable_fade_manager_configuration"

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
            "Landroid/media/audiopolicy/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/audiopolicy/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/audiopolicy/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/audiopolicy/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist multiZoneAudio()Z
    .locals 2

    new-instance v0, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.media.audiopolicy.multi_zone_audio"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiopolicy/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist recordAudioDeviceAwarePermission()Z
    .locals 2

    new-instance v0, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/media/audiopolicy/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.media.audiopolicy.record_audio_device_aware_permission"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiopolicy/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
