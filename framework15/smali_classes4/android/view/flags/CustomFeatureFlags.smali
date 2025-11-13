.class public Landroid/view/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/view/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/flags/FeatureFlags;",
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
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v28, "android.view.flags.view_velocity_api"

    const-string v29, ""

    const-string v2, "android.view.flags.add_schandle_to_vri_surface"

    const-string v3, "android.view.flags.customizable_window_headers"

    const-string v4, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    const-string v5, "android.view.flags.enable_invalidate_check_thread"

    const-string v6, "android.view.flags.enable_surface_native_alloc_registration_ro"

    const-string v7, "android.view.flags.enable_use_measure_cache_during_force_layout"

    const-string v8, "android.view.flags.enable_vector_cursor_a11y_settings"

    const-string v9, "android.view.flags.enable_vector_cursors"

    const-string v10, "android.view.flags.expected_presentation_time_api"

    const-string v11, "android.view.flags.expected_presentation_time_read_only"

    const-string v12, "android.view.flags.scroll_feedback_api"

    const-string v13, "android.view.flags.sensitive_content_app_protection"

    const-string v14, "android.view.flags.sensitive_content_app_protection_api"

    const-string v15, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    const-string v16, "android.view.flags.set_frame_rate_callback"

    const-string v17, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    const-string v18, "android.view.flags.toolkit_frame_rate_default_normal_read_only"

    const-string v19, "android.view.flags.toolkit_frame_rate_function_enabling_read_only"

    const-string v20, "android.view.flags.toolkit_frame_rate_small_uses_percent_read_only"

    const-string v21, "android.view.flags.toolkit_frame_rate_typing_read_only"

    const-string v22, "android.view.flags.toolkit_frame_rate_velocity_mapping_read_only"

    const-string v23, "android.view.flags.toolkit_frame_rate_view_enabling_read_only"

    const-string v24, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    const-string v25, "android.view.flags.toolkit_set_frame_rate"

    const-string v26, "android.view.flags.toolkit_set_frame_rate_read_only"

    const-string v27, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/view/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addSchandleToVriSurface()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.view.flags.add_schandle_to_vri_surface"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist customizableWindowHeaders()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.flags.customizable_window_headers"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableArrowIconOnHoverWhenClickable()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableInvalidateCheckThread()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.flags.enable_invalidate_check_thread"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSurfaceNativeAllocRegistrationRo()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.flags.enable_surface_native_alloc_registration_ro"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableUseMeasureCacheDuringForceLayout()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.flags.enable_use_measure_cache_during_force_layout"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableVectorCursorA11ySettings()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.flags.enable_vector_cursor_a11y_settings"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableVectorCursors()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.flags.enable_vector_cursors"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist expectedPresentationTimeApi()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.flags.expected_presentation_time_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist expectedPresentationTimeReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.view.flags.expected_presentation_time_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v25, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    const-string v26, "android.view.flags.view_velocity_api"

    const-string v0, "android.view.flags.add_schandle_to_vri_surface"

    const-string v1, "android.view.flags.customizable_window_headers"

    const-string v2, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    const-string v3, "android.view.flags.enable_invalidate_check_thread"

    const-string v4, "android.view.flags.enable_surface_native_alloc_registration_ro"

    const-string v5, "android.view.flags.enable_use_measure_cache_during_force_layout"

    const-string v6, "android.view.flags.enable_vector_cursor_a11y_settings"

    const-string v7, "android.view.flags.enable_vector_cursors"

    const-string v8, "android.view.flags.expected_presentation_time_api"

    const-string v9, "android.view.flags.expected_presentation_time_read_only"

    const-string v10, "android.view.flags.scroll_feedback_api"

    const-string v11, "android.view.flags.sensitive_content_app_protection"

    const-string v12, "android.view.flags.sensitive_content_app_protection_api"

    const-string v13, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    const-string v14, "android.view.flags.set_frame_rate_callback"

    const-string v15, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    const-string v16, "android.view.flags.toolkit_frame_rate_default_normal_read_only"

    const-string v17, "android.view.flags.toolkit_frame_rate_function_enabling_read_only"

    const-string v18, "android.view.flags.toolkit_frame_rate_small_uses_percent_read_only"

    const-string v19, "android.view.flags.toolkit_frame_rate_typing_read_only"

    const-string v20, "android.view.flags.toolkit_frame_rate_velocity_mapping_read_only"

    const-string v21, "android.view.flags.toolkit_frame_rate_view_enabling_read_only"

    const-string v22, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    const-string v23, "android.view.flags.toolkit_set_frame_rate"

    const-string v24, "android.view.flags.toolkit_set_frame_rate_read_only"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

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
            "Landroid/view/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist scrollFeedbackApi()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.flags.scroll_feedback_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sensitiveContentAppProtection()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_app_protection"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sensitiveContentAppProtectionApi()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_app_protection_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sensitiveContentPrematureProtectionRemovedFix()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setFrameRateCallback()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.flags.set_frame_rate_callback"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateBySizeReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateDefaultNormalReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_default_normal_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateFunctionEnablingReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_function_enabling_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateSmallUsesPercentReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_small_uses_percent_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateTypingReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_typing_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateVelocityMappingReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_velocity_mapping_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateViewEnablingReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_view_enabling_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitMetricsForFrameRateDecision()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitSetFrameRate()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.view.flags.toolkit_set_frame_rate"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitSetFrameRateReadOnly()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.flags.toolkit_set_frame_rate_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useViewBasedRotaryEncoderScrollHaptics()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist viewVelocityApi()Z
    .locals 2

    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.flags.view_velocity_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
