.class public Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;",
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
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v39, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    const-string v40, ""

    const-string v2, "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

    const-string v3, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    const-string v4, "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

    const-string v5, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    const-string v6, "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

    const-string v7, "com.android.graphics.surfaceflinger.flags.commit_not_composited"

    const-string v8, "com.android.graphics.surfaceflinger.flags.connected_display"

    const-string v9, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    const-string v10, "com.android.graphics.surfaceflinger.flags.detached_mirror"

    const-string v11, "com.android.graphics.surfaceflinger.flags.display_protected"

    const-string v12, "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

    const-string v13, "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

    const-string v14, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    const-string v15, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    const-string v16, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    const-string v17, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    const-string v18, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    const-string v19, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    const-string v20, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    const-string v21, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    const-string v22, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    const-string v23, "com.android.graphics.surfaceflinger.flags.hotplug2"

    const-string v24, "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

    const-string v25, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    const-string v26, "com.android.graphics.surfaceflinger.flags.misc1"

    const-string v27, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    const-string v28, "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

    const-string v29, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    const-string v30, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    const-string v31, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    const-string v32, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    const-string v33, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    const-string v34, "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

    const-string v35, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    const-string v36, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

    const-string v37, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

    const-string v38, "com.android.graphics.surfaceflinger.flags.vrr_config"

    filled-new-array/range {v2 .. v40}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addSfSkippedFramesToTrace()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adpfGpuSf()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowNVsyncsInTargeter()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cacheWhenSourceCropLayerOnlyMoved()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ceFencePromise()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist commitNotComposited()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.commit_not_composited"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist connectedDisplay()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.connected_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateVsyncSf()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist detachedMirror()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.detached_mirror"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist displayProtected()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.display_protected"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dontSkipOnEarlyRo()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableFroDependentFeatures()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableLayerCommandBatching()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSmallAreaDetection()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist flushBufferSlotsToUncache()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist forceCompileGraphiteRenderengine()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fp16ClientTarget()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist frameRateCategoryMrr()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gameDefaultFrameRate()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v36, "com.android.graphics.surfaceflinger.flags.vrr_config"

    const-string v37, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    const-string v0, "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

    const-string v1, "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

    const-string v2, "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

    const-string v3, "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

    const-string v4, "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

    const-string v5, "com.android.graphics.surfaceflinger.flags.commit_not_composited"

    const-string v6, "com.android.graphics.surfaceflinger.flags.connected_display"

    const-string v7, "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

    const-string v8, "com.android.graphics.surfaceflinger.flags.detached_mirror"

    const-string v9, "com.android.graphics.surfaceflinger.flags.display_protected"

    const-string v10, "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

    const-string v11, "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

    const-string v12, "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

    const-string v13, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    const-string v14, "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

    const-string v15, "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

    const-string v16, "com.android.graphics.surfaceflinger.flags.fp16_client_target"

    const-string v17, "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

    const-string v18, "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

    const-string v19, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    const-string v20, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    const-string v21, "com.android.graphics.surfaceflinger.flags.hotplug2"

    const-string v22, "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

    const-string v23, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    const-string v24, "com.android.graphics.surfaceflinger.flags.misc1"

    const-string v25, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    const-string v26, "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

    const-string v27, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    const-string v28, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    const-string v29, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    const-string v30, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    const-string v31, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    const-string v32, "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

    const-string v33, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    const-string v34, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

    const-string v35, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

    filled-new-array/range {v0 .. v37}, [Ljava/lang/String;

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
            "Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist graphiteRenderengine()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hdcpLevelHal()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hotplug2()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.hotplug2"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist latchUnsignaledWithAutoRefreshChanged()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist localTonemapScreenshots()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist misc1()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.misc1"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist multithreadedPresent()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.multithreaded_present"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist overrideTrustedOverlay()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist protectedIfClient()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.protected_if_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refreshRateOverlayOnExternalDisplay()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist renderableBufferUsage()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restoreBlurStep()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.restore_blur_step"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist screenshotFencePreservation()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist singleHopScreenshot()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useKnownRefreshRateForFpsConsistency()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vrrBugfix24q4()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vrrBugfixDroppedFrame()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vrrConfig()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vrr_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vulkanRenderengine()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/surfaceflinger/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
