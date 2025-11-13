.class public Landroid/nfc/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/nfc/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/nfc/FeatureFlags;",
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
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/nfc/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v15, "android.nfc.nfc_vendor_cmd"

    const-string v16, ""

    const-string v2, "android.nfc.enable_nfc_charging"

    const-string v3, "android.nfc.enable_nfc_mainline"

    const-string v4, "android.nfc.enable_nfc_reader_option"

    const-string v5, "android.nfc.enable_nfc_set_discovery_tech"

    const-string v6, "android.nfc.enable_nfc_user_restriction"

    const-string v7, "android.nfc.enable_tag_detection_broadcasts"

    const-string v8, "android.nfc.nfc_observe_mode"

    const-string v9, "android.nfc.nfc_observe_mode_st_shim"

    const-string v10, "android.nfc.nfc_oem_extension"

    const-string v11, "android.nfc.nfc_read_polling_loop"

    const-string v12, "android.nfc.nfc_read_polling_loop_st_shim"

    const-string v13, "android.nfc.nfc_set_default_disc_tech"

    const-string v14, "android.nfc.nfc_state_change"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/nfc/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/nfc/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist enableNfcCharging()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.nfc.enable_nfc_charging"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNfcMainline()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.nfc.enable_nfc_mainline"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNfcReaderOption()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.nfc.enable_nfc_reader_option"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNfcSetDiscoveryTech()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.nfc.enable_nfc_set_discovery_tech"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNfcUserRestriction()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.nfc.enable_nfc_user_restriction"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTagDetectionBroadcasts()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.nfc.enable_tag_detection_broadcasts"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v12, "android.nfc.nfc_state_change"

    const-string v13, "android.nfc.nfc_vendor_cmd"

    const-string v0, "android.nfc.enable_nfc_charging"

    const-string v1, "android.nfc.enable_nfc_mainline"

    const-string v2, "android.nfc.enable_nfc_reader_option"

    const-string v3, "android.nfc.enable_nfc_set_discovery_tech"

    const-string v4, "android.nfc.enable_nfc_user_restriction"

    const-string v5, "android.nfc.enable_tag_detection_broadcasts"

    const-string v6, "android.nfc.nfc_observe_mode"

    const-string v7, "android.nfc.nfc_observe_mode_st_shim"

    const-string v8, "android.nfc.nfc_oem_extension"

    const-string v9, "android.nfc.nfc_read_polling_loop"

    const-string v10, "android.nfc.nfc_read_polling_loop_st_shim"

    const-string v11, "android.nfc.nfc_set_default_disc_tech"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

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
            "Landroid/nfc/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/nfc/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/nfc/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/nfc/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nfcObserveMode()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.nfc.nfc_observe_mode"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nfcObserveModeStShim()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.nfc.nfc_observe_mode_st_shim"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nfcOemExtension()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.nfc.nfc_oem_extension"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nfcReadPollingLoop()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.nfc.nfc_read_polling_loop"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nfcReadPollingLoopStShim()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.nfc.nfc_read_polling_loop_st_shim"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nfcSetDefaultDiscTech()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.nfc.nfc_set_default_disc_tech"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nfcStateChange()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.nfc.nfc_state_change"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nfcVendorCmd()Z
    .locals 2

    new-instance v0, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/nfc/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.nfc.nfc_vendor_cmd"

    invoke-virtual {p0, v1, v0}, Landroid/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
