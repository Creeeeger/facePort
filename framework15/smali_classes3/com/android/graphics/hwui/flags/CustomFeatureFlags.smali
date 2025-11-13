.class public Lcom/android/graphics/hwui/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/graphics/hwui/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/hwui/flags/FeatureFlags;",
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
            "Lcom/android/graphics/hwui/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v14, "com.android.graphics.hwui.flags.requested_formats_v"

    const-string v15, ""

    const-string v2, "com.android.graphics.hwui.flags.animate_hdr_transitions"

    const-string v3, "com.android.graphics.hwui.flags.clip_shader"

    const-string v4, "com.android.graphics.hwui.flags.clip_surfaceviews"

    const-string v5, "com.android.graphics.hwui.flags.draw_region"

    const-string v6, "com.android.graphics.hwui.flags.gainmap_animations"

    const-string v7, "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

    const-string v8, "com.android.graphics.hwui.flags.hdr_10bit_plus"

    const-string v9, "com.android.graphics.hwui.flags.high_contrast_text_luminance"

    const-string v10, "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

    const-string v11, "com.android.graphics.hwui.flags.initialize_gl_always"

    const-string v12, "com.android.graphics.hwui.flags.limited_hdr"

    const-string v13, "com.android.graphics.hwui.flags.matrix_44"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist animateHdrTransitions()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.animate_hdr_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clipShader()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.clip_shader"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clipSurfaceviews()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.clip_surfaceviews"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist drawRegion()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.draw_region"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gainmapAnimations()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.gainmap_animations"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gainmapConstructorWithMetadata()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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

    const-string v11, "com.android.graphics.hwui.flags.matrix_44"

    const-string v12, "com.android.graphics.hwui.flags.requested_formats_v"

    const-string v0, "com.android.graphics.hwui.flags.animate_hdr_transitions"

    const-string v1, "com.android.graphics.hwui.flags.clip_shader"

    const-string v2, "com.android.graphics.hwui.flags.clip_surfaceviews"

    const-string v3, "com.android.graphics.hwui.flags.draw_region"

    const-string v4, "com.android.graphics.hwui.flags.gainmap_animations"

    const-string v5, "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

    const-string v6, "com.android.graphics.hwui.flags.hdr_10bit_plus"

    const-string v7, "com.android.graphics.hwui.flags.high_contrast_text_luminance"

    const-string v8, "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

    const-string v9, "com.android.graphics.hwui.flags.initialize_gl_always"

    const-string v10, "com.android.graphics.hwui.flags.limited_hdr"

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
            "Lcom/android/graphics/hwui/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hdr10bitPlus()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.hdr_10bit_plus"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist highContrastTextLuminance()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.high_contrast_text_luminance"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist highContrastTextSmallTextRect()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist initializeGlAlways()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.initialize_gl_always"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist limitedHdr()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.limited_hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist matrix44()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.matrix_44"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist requestedFormatsV()Z
    .locals 2

    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.requested_formats_v"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
