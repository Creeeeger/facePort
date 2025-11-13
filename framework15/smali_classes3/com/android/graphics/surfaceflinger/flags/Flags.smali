.class public final Lcom/android/graphics/surfaceflinger/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_SF_SKIPPED_FRAMES_TO_TRACE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.add_sf_skipped_frames_to_trace"

.field public static final blacklist FLAG_ADPF_GPU_SF:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.adpf_gpu_sf"

.field public static final blacklist FLAG_ALLOW_N_VSYNCS_IN_TARGETER:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.allow_n_vsyncs_in_targeter"

.field public static final blacklist FLAG_CACHE_WHEN_SOURCE_CROP_LAYER_ONLY_MOVED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.cache_when_source_crop_layer_only_moved"

.field public static final blacklist FLAG_CE_FENCE_PROMISE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.ce_fence_promise"

.field public static final blacklist FLAG_COMMIT_NOT_COMPOSITED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.commit_not_composited"

.field public static final blacklist FLAG_CONNECTED_DISPLAY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.connected_display"

.field public static final blacklist FLAG_DEPRECATE_VSYNC_SF:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.deprecate_vsync_sf"

.field public static final blacklist FLAG_DETACHED_MIRROR:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.detached_mirror"

.field public static final blacklist FLAG_DISPLAY_PROTECTED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.display_protected"

.field public static final blacklist FLAG_DONT_SKIP_ON_EARLY_RO:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.dont_skip_on_early_ro"

.field public static final blacklist FLAG_ENABLE_FRO_DEPENDENT_FEATURES:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.enable_fro_dependent_features"

.field public static final blacklist FLAG_ENABLE_LAYER_COMMAND_BATCHING:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.enable_layer_command_batching"

.field public static final blacklist FLAG_ENABLE_SMALL_AREA_DETECTION:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

.field public static final blacklist FLAG_FLUSH_BUFFER_SLOTS_TO_UNCACHE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.flush_buffer_slots_to_uncache"

.field public static final blacklist FLAG_FORCE_COMPILE_GRAPHITE_RENDERENGINE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.force_compile_graphite_renderengine"

.field public static final blacklist FLAG_FP16_CLIENT_TARGET:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.fp16_client_target"

.field public static final blacklist FLAG_FRAME_RATE_CATEGORY_MRR:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.frame_rate_category_mrr"

.field public static final blacklist FLAG_GAME_DEFAULT_FRAME_RATE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.game_default_frame_rate"

.field public static final blacklist FLAG_GRAPHITE_RENDERENGINE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.graphite_renderengine"

.field public static final blacklist FLAG_HDCP_LEVEL_HAL:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.hdcp_level_hal"

.field public static final blacklist FLAG_HOTPLUG2:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.hotplug2"

.field public static final blacklist FLAG_LATCH_UNSIGNALED_WITH_AUTO_REFRESH_CHANGED:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.latch_unsignaled_with_auto_refresh_changed"

.field public static final blacklist FLAG_LOCAL_TONEMAP_SCREENSHOTS:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.local_tonemap_screenshots"

.field public static final blacklist FLAG_MISC1:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.misc1"

.field public static final blacklist FLAG_MULTITHREADED_PRESENT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.multithreaded_present"

.field public static final blacklist FLAG_OVERRIDE_TRUSTED_OVERLAY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.override_trusted_overlay"

.field public static final blacklist FLAG_PROTECTED_IF_CLIENT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.protected_if_client"

.field public static final blacklist FLAG_REFRESH_RATE_OVERLAY_ON_EXTERNAL_DISPLAY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.refresh_rate_overlay_on_external_display"

.field public static final blacklist FLAG_RENDERABLE_BUFFER_USAGE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.renderable_buffer_usage"

.field public static final blacklist FLAG_RESTORE_BLUR_STEP:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.restore_blur_step"

.field public static final blacklist FLAG_SCREENSHOT_FENCE_PRESERVATION:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.screenshot_fence_preservation"

.field public static final blacklist FLAG_SINGLE_HOP_SCREENSHOT:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.single_hop_screenshot"

.field public static final blacklist FLAG_USE_KNOWN_REFRESH_RATE_FOR_FPS_CONSISTENCY:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.use_known_refresh_rate_for_fps_consistency"

.field public static final blacklist FLAG_VRR_BUGFIX_24Q4:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vrr_bugfix_24q4"

.field public static final blacklist FLAG_VRR_BUGFIX_DROPPED_FRAME:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vrr_bugfix_dropped_frame"

.field public static final blacklist FLAG_VRR_CONFIG:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vrr_config"

.field public static final blacklist FLAG_VULKAN_RENDERENGINE:Ljava/lang/String; = "com.android.graphics.surfaceflinger.flags.vulkan_renderengine"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addSfSkippedFramesToTrace()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->addSfSkippedFramesToTrace()Z

    move-result v0

    return v0
.end method

.method public static greylist adpfGpuSf()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->adpfGpuSf()Z

    move-result v0

    return v0
.end method

.method public static greylist allowNVsyncsInTargeter()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->allowNVsyncsInTargeter()Z

    move-result v0

    return v0
.end method

.method public static greylist cacheWhenSourceCropLayerOnlyMoved()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->cacheWhenSourceCropLayerOnlyMoved()Z

    move-result v0

    return v0
.end method

.method public static greylist ceFencePromise()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->ceFencePromise()Z

    move-result v0

    return v0
.end method

.method public static greylist commitNotComposited()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->commitNotComposited()Z

    move-result v0

    return v0
.end method

.method public static greylist connectedDisplay()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->connectedDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateVsyncSf()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->deprecateVsyncSf()Z

    move-result v0

    return v0
.end method

.method public static greylist detachedMirror()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->detachedMirror()Z

    move-result v0

    return v0
.end method

.method public static greylist displayProtected()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->displayProtected()Z

    move-result v0

    return v0
.end method

.method public static greylist dontSkipOnEarlyRo()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->dontSkipOnEarlyRo()Z

    move-result v0

    return v0
.end method

.method public static greylist enableFroDependentFeatures()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->enableFroDependentFeatures()Z

    move-result v0

    return v0
.end method

.method public static greylist enableLayerCommandBatching()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->enableLayerCommandBatching()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSmallAreaDetection()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->enableSmallAreaDetection()Z

    move-result v0

    return v0
.end method

.method public static greylist flushBufferSlotsToUncache()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->flushBufferSlotsToUncache()Z

    move-result v0

    return v0
.end method

.method public static greylist forceCompileGraphiteRenderengine()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->forceCompileGraphiteRenderengine()Z

    move-result v0

    return v0
.end method

.method public static greylist fp16ClientTarget()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->fp16ClientTarget()Z

    move-result v0

    return v0
.end method

.method public static greylist frameRateCategoryMrr()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->frameRateCategoryMrr()Z

    move-result v0

    return v0
.end method

.method public static greylist gameDefaultFrameRate()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->gameDefaultFrameRate()Z

    move-result v0

    return v0
.end method

.method public static greylist graphiteRenderengine()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->graphiteRenderengine()Z

    move-result v0

    return v0
.end method

.method public static greylist hdcpLevelHal()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->hdcpLevelHal()Z

    move-result v0

    return v0
.end method

.method public static greylist hotplug2()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->hotplug2()Z

    move-result v0

    return v0
.end method

.method public static greylist latchUnsignaledWithAutoRefreshChanged()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->latchUnsignaledWithAutoRefreshChanged()Z

    move-result v0

    return v0
.end method

.method public static greylist localTonemapScreenshots()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->localTonemapScreenshots()Z

    move-result v0

    return v0
.end method

.method public static greylist misc1()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->misc1()Z

    move-result v0

    return v0
.end method

.method public static greylist multithreadedPresent()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->multithreadedPresent()Z

    move-result v0

    return v0
.end method

.method public static greylist overrideTrustedOverlay()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->overrideTrustedOverlay()Z

    move-result v0

    return v0
.end method

.method public static greylist protectedIfClient()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->protectedIfClient()Z

    move-result v0

    return v0
.end method

.method public static greylist refreshRateOverlayOnExternalDisplay()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->refreshRateOverlayOnExternalDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist renderableBufferUsage()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->renderableBufferUsage()Z

    move-result v0

    return v0
.end method

.method public static greylist restoreBlurStep()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->restoreBlurStep()Z

    move-result v0

    return v0
.end method

.method public static greylist screenshotFencePreservation()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->screenshotFencePreservation()Z

    move-result v0

    return v0
.end method

.method public static greylist singleHopScreenshot()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->singleHopScreenshot()Z

    move-result v0

    return v0
.end method

.method public static greylist useKnownRefreshRateForFpsConsistency()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->useKnownRefreshRateForFpsConsistency()Z

    move-result v0

    return v0
.end method

.method public static greylist vrrBugfix24q4()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vrrBugfix24q4()Z

    move-result v0

    return v0
.end method

.method public static greylist vrrBugfixDroppedFrame()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vrrBugfixDroppedFrame()Z

    move-result v0

    return v0
.end method

.method public static greylist vrrConfig()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vrrConfig()Z

    move-result v0

    return v0
.end method

.method public static greylist vulkanRenderengine()Z
    .locals 1

    sget-object v0, Lcom/android/graphics/surfaceflinger/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;->vulkanRenderengine()Z

    move-result v0

    return v0
.end method
