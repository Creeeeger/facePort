.class public Landroid/media/codec/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/media/codec/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/media/codec/FeatureFlags;",
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
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/media/codec/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v17, "android.media.codec.teamfood"

    const-string v18, ""

    const-string v2, "android.media.codec.aidl_hal_input_surface"

    const-string v3, "android.media.codec.dynamic_color_aspects"

    const-string v4, "android.media.codec.hlg_editing"

    const-string v5, "android.media.codec.in_process_sw_audio_codec"

    const-string v6, "android.media.codec.in_process_sw_audio_codec_support"

    const-string v7, "android.media.codec.input_surface_throttle"

    const-string v8, "android.media.codec.large_audio_frame_finish"

    const-string v9, "android.media.codec.native_capabilites"

    const-string v10, "android.media.codec.null_output_surface"

    const-string v11, "android.media.codec.null_output_surface_support"

    const-string v12, "android.media.codec.region_of_interest"

    const-string v13, "android.media.codec.region_of_interest_support"

    const-string v14, "android.media.codec.set_callback_stall"

    const-string v15, "android.media.codec.set_state_early"

    const-string v16, "android.media.codec.stop_hal_before_surface"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/media/codec/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/media/codec/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist aidlHalInputSurface()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.media.codec.aidl_hal_input_surface"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dynamicColorAspects()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.media.codec.dynamic_color_aspects"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v14, "android.media.codec.stop_hal_before_surface"

    const-string v15, "android.media.codec.teamfood"

    const-string v0, "android.media.codec.aidl_hal_input_surface"

    const-string v1, "android.media.codec.dynamic_color_aspects"

    const-string v2, "android.media.codec.hlg_editing"

    const-string v3, "android.media.codec.in_process_sw_audio_codec"

    const-string v4, "android.media.codec.in_process_sw_audio_codec_support"

    const-string v5, "android.media.codec.input_surface_throttle"

    const-string v6, "android.media.codec.large_audio_frame_finish"

    const-string v7, "android.media.codec.native_capabilites"

    const-string v8, "android.media.codec.null_output_surface"

    const-string v9, "android.media.codec.null_output_surface_support"

    const-string v10, "android.media.codec.region_of_interest"

    const-string v11, "android.media.codec.region_of_interest_support"

    const-string v12, "android.media.codec.set_callback_stall"

    const-string v13, "android.media.codec.set_state_early"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

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
            "Landroid/media/codec/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/codec/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hlgEditing()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.media.codec.hlg_editing"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inProcessSwAudioCodec()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.media.codec.in_process_sw_audio_codec"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inProcessSwAudioCodecSupport()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.media.codec.in_process_sw_audio_codec_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inputSurfaceThrottle()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.media.codec.input_surface_throttle"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/codec/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/codec/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist largeAudioFrameFinish()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.media.codec.large_audio_frame_finish"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nativeCapabilites()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.media.codec.native_capabilites"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nullOutputSurface()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.media.codec.null_output_surface"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nullOutputSurfaceSupport()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.media.codec.null_output_surface_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist regionOfInterest()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.media.codec.region_of_interest"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist regionOfInterestSupport()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.media.codec.region_of_interest_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setCallbackStall()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.media.codec.set_callback_stall"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setStateEarly()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.media.codec.set_state_early"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist stopHalBeforeSurface()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.media.codec.stop_hal_before_surface"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist teamfood()Z
    .locals 2

    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.media.codec.teamfood"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
