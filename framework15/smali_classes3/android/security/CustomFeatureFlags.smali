.class public Landroid/security/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/security/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/security/FeatureFlags;",
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
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/security/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v21, "android.security.unlocked_storage_api"

    const-string v22, ""

    const-string v2, "android.security.asm_opt_system_into_enforcement"

    const-string v3, "android.security.asm_restrictions_enabled"

    const-string v4, "android.security.asm_toasts_enabled"

    const-string v5, "android.security.binary_transparency_sepolicy_hash"

    const-string v6, "android.security.block_null_action_intents"

    const-string v7, "android.security.certificate_transparency_configuration"

    const-string v8, "android.security.content_uri_permission_apis"

    const-string v9, "android.security.deprecate_fsv_sig"

    const-string v10, "android.security.dump_attestation_verifications"

    const-string v11, "android.security.enforce_intent_filter_match"

    const-string v12, "android.security.extend_ecm_to_all_settings"

    const-string v13, "android.security.extend_vb_chain_to_updated_apk"

    const-string v14, "android.security.fix_unlocked_device_required_keys_v2"

    const-string v15, "android.security.frp_enforcement"

    const-string v16, "android.security.fsverity_api"

    const-string v17, "android.security.keyinfo_unlocked_device_required"

    const-string v18, "android.security.mgf1_digest_setter_v2"

    const-string v19, "android.security.report_primary_auth_attempts"

    const-string v20, "android.security.significant_places"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/security/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist asmOptSystemIntoEnforcement()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.security.asm_opt_system_into_enforcement"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist asmRestrictionsEnabled()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.security.asm_restrictions_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist asmToastsEnabled()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.security.asm_toasts_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist binaryTransparencySepolicyHash()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.security.binary_transparency_sepolicy_hash"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist blockNullActionIntents()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.security.block_null_action_intents"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist certificateTransparencyConfiguration()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.security.certificate_transparency_configuration"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist contentUriPermissionApis()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.security.content_uri_permission_apis"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateFsvSig()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.security.deprecate_fsv_sig"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dumpAttestationVerifications()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.security.dump_attestation_verifications"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforceIntentFilterMatch()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.security.enforce_intent_filter_match"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist extendEcmToAllSettings()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.security.extend_ecm_to_all_settings"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist extendVbChainToUpdatedApk()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.security.extend_vb_chain_to_updated_apk"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixUnlockedDeviceRequiredKeysV2()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.security.fix_unlocked_device_required_keys_v2"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist frpEnforcement()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.security.frp_enforcement"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fsverityApi()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.security.fsverity_api"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v18, "android.security.significant_places"

    const-string v19, "android.security.unlocked_storage_api"

    const-string v0, "android.security.asm_opt_system_into_enforcement"

    const-string v1, "android.security.asm_restrictions_enabled"

    const-string v2, "android.security.asm_toasts_enabled"

    const-string v3, "android.security.binary_transparency_sepolicy_hash"

    const-string v4, "android.security.block_null_action_intents"

    const-string v5, "android.security.certificate_transparency_configuration"

    const-string v6, "android.security.content_uri_permission_apis"

    const-string v7, "android.security.deprecate_fsv_sig"

    const-string v8, "android.security.dump_attestation_verifications"

    const-string v9, "android.security.enforce_intent_filter_match"

    const-string v10, "android.security.extend_ecm_to_all_settings"

    const-string v11, "android.security.extend_vb_chain_to_updated_apk"

    const-string v12, "android.security.fix_unlocked_device_required_keys_v2"

    const-string v13, "android.security.frp_enforcement"

    const-string v14, "android.security.fsverity_api"

    const-string v15, "android.security.keyinfo_unlocked_device_required"

    const-string v16, "android.security.mgf1_digest_setter_v2"

    const-string v17, "android.security.report_primary_auth_attempts"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

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
            "Landroid/security/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/security/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/security/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keyinfoUnlockedDeviceRequired()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.security.keyinfo_unlocked_device_required"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist mgf1DigestSetterV2()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.security.mgf1_digest_setter_v2"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reportPrimaryAuthAttempts()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.security.report_primary_auth_attempts"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist significantPlaces()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.security.significant_places"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist unlockedStorageApi()Z
    .locals 2

    new-instance v0, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/security/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.security.unlocked_storage_api"

    invoke-virtual {p0, v1, v0}, Landroid/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
