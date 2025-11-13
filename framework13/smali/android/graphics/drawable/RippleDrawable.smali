.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$RippleState;,
        Landroid/graphics/drawable/RippleDrawable$RippleStyle;
    }
.end annotation


# static fields
.field private static final blacklist BACKGROUND_OPACITY_DURATION:I = 0x50

.field private static final blacklist DEFAULT_EFFECT_COLOR:I = -0x72000001

.field private static final blacklist FORCE_PATTERNED_STYLE:Z = false

.field private static final blacklist LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field private static final greylist-max-o MASK_CONTENT:I = 0x1

.field private static final greylist-max-o MASK_EXPLICIT:I = 0x2

.field private static final greylist-max-o MASK_NONE:I = 0x0

.field private static final greylist-max-o MASK_UNKNOWN:I = -0x1

.field private static final greylist-max-o MAX_RIPPLES:I = 0xa

.field public static final whitelist RADIUS_AUTO:I = -0x1

.field public static final blacklist STYLE_PATTERNED:I = 0x1

.field public static final blacklist STYLE_SOLID:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "RippleDrawable"


# instance fields
.field private blacklist mAddRipple:Z

.field private greylist-max-o mBackground:Landroid/graphics/drawable/RippleBackground;

.field private blacklist mBackgroundAnimation:Landroid/animation/ValueAnimator;

.field private blacklist mBackgroundOpacity:F

.field private greylist-max-r mDensity:I

.field private final greylist-max-o mDirtyBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mDrawingBounds:Landroid/graphics/Rect;

.field private blacklist mExitingAnimation:Z

.field private greylist-max-o mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

.field private greylist-max-o mExitingRipplesCount:I

.field private blacklist mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private greylist-max-o mForceSoftware:Z

.field private greylist-max-o mHasPending:Z

.field private greylist-max-o mHasValidMask:Z

.field private final greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field private greylist-max-o mMask:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMaskBuffer:Landroid/graphics/Bitmap;

.field private greylist-max-o mMaskCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private greylist-max-o mMaskMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mMaskShader:Landroid/graphics/BitmapShader;

.field private greylist-max-o mOverrideBounds:Z

.field private greylist-max-o mPendingX:F

.field private greylist-max-o mPendingY:F

.field private greylist-max-o mRipple:Landroid/graphics/drawable/RippleForeground;

.field private greylist-max-o mRippleActive:Z

.field private greylist-max-o mRipplePaint:Landroid/graphics/Paint;

.field private blacklist mRunBackgroundAnimation:Z

.field private blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/RippleAnimationSession;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private blacklist mTargetBackgroundOpacity:F

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 2

    .line 240
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    .line 241
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    .line 253
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    .line 255
    if-eqz p1, :cond_2

    .line 259
    if-eqz p2, :cond_0

    .line 260
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 263
    :cond_0
    if-eqz p3, :cond_1

    .line 264
    const/4 v4, 0x0

    const v5, 0x102002e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 267
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 268
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 269
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    .line 270
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 271
    return-void

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1398
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 228
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    .line 1399
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 1400
    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1401
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    .line 1403
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNumChildren:I

    if-lez v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 1405
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    .line 1408
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 1409
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o cancelExitingRipples()V
    .locals 4

    .line 298
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 299
    .local v0, "count":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 300
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 301
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->end()V

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 305
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 307
    :cond_1
    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 309
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 310
    return-void
.end method

.method private blacklist clampAlpha(I)I
    .locals 2
    .param p1, "color"    # I

    .line 1019
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 1021
    const v0, 0xffffff

    and-int/2addr v0, p1

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    return v0

    .line 1023
    :cond_0
    return p1
.end method

.method private greylist-max-o clearHotspots()V
    .locals 2

    .line 731
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .line 734
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleBackground;->setState(ZZZ)V

    .line 741
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    .line 742
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->endPatternedAnimations()V

    .line 743
    return-void
.end method

.method private blacklist computeRadius()F
    .locals 5

    .line 972
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 973
    .local v0, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 974
    .local v2, "halfHeight":F
    mul-float v1, v0, v0

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    return v1
.end method

.method private blacklist createAnimationProperties(FFFFFF)Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .locals 20
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cx"    # F
    .param p4, "cy"    # F
    .param p5, "w"    # F
    .param p6, "h"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    .line 985
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 986
    .local v1, "p":Landroid/graphics/Paint;
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v2

    int-to-float v2, v2

    .line 988
    .local v2, "radius":F
    new-instance v3, Landroid/graphics/drawable/RippleShader;

    invoke-direct {v3}, Landroid/graphics/drawable/RippleShader;-><init>()V

    move-object v12, v3

    .line 991
    .local v12, "shader":Landroid/graphics/drawable/RippleShader;
    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_0

    .line 992
    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_0

    .line 993
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v3

    .line 991
    :goto_0
    invoke-direct {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->clampAlpha(I)I

    move-result v13

    .line 994
    .local v13, "color":I
    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v4

    const v5, -0xff01

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    .line 995
    .local v14, "effectColor":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    long-to-float v15, v3

    .line 996
    .local v15, "noisePhase":F
    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/RippleShader;->setColor(II)V

    .line 997
    move/from16 v11, p3

    move/from16 v10, p4

    invoke-virtual {v12, v11, v10}, Landroid/graphics/drawable/RippleShader;->setOrigin(FF)V

    .line 998
    move/from16 v9, p1

    move/from16 v8, p2

    invoke-virtual {v12, v9, v8}, Landroid/graphics/drawable/RippleShader;->setTouch(FF)V

    .line 999
    move/from16 v7, p5

    move/from16 v6, p6

    invoke-virtual {v12, v7, v6}, Landroid/graphics/drawable/RippleShader;->setResolution(FF)V

    .line 1000
    invoke-virtual {v12, v15}, Landroid/graphics/drawable/RippleShader;->setNoisePhase(F)V

    .line 1001
    invoke-virtual {v12, v2}, Landroid/graphics/drawable/RippleShader;->setRadius(F)V

    .line 1002
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/RippleShader;->setProgress(F)V

    .line 1003
    new-instance v16, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 1004
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v1

    move-object/from16 v9, v19

    move v10, v13

    move-object v11, v12

    invoke-direct/range {v3 .. v11}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V

    .line 1005
    .local v3, "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    iget-object v4, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 1006
    invoke-virtual {v12, v5}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    goto :goto_1

    .line 1008
    :cond_1
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    .line 1010
    :goto_1
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1011
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1012
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1013
    return-object v3
.end method

.method private greylist-max-o drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1172
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .line 1173
    .local v0, "active":Landroid/graphics/drawable/RippleForeground;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 1174
    .local v1, "background":Landroid/graphics/drawable/RippleBackground;
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1175
    .local v2, "count":I
    if-nez v0, :cond_1

    if-gtz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1177
    :cond_0
    return-void

    .line 1180
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 1181
    .local v3, "x":F
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 1182
    .local v4, "y":F
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1184
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 1186
    .local v5, "p":Landroid/graphics/Paint;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1187
    invoke-virtual {v1, p1, v5}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1190
    :cond_2
    if-lez v2, :cond_3

    .line 1191
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 1192
    .local v6, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 1193
    aget-object v8, v6, v7

    invoke-virtual {v8, p1, v5}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1192
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1197
    .end local v6    # "ripples":[Landroid/graphics/drawable/RippleForeground;
    .end local v7    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1198
    invoke-virtual {v0, p1, v5}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1201
    :cond_4
    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1202
    return-void
.end method

.method private greylist-max-o drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1162
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1163
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1164
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1165
    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v4, 0x102002e

    if-eq v3, v4, :cond_0

    .line 1166
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1169
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o drawMask(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1205
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1206
    return-void
.end method

.method private blacklist drawPatterned(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 883
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 884
    .local v9, "bounds":Landroid/graphics/Rect;
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v10

    .line 885
    .local v10, "saveCount":I
    iget-boolean v0, v7, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    move v12, v0

    .line 886
    .local v12, "useCanvasProps":Z
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 890
    :cond_0
    iget-boolean v13, v7, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 891
    .local v13, "addRipple":Z
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v14, v0

    .line 892
    .local v14, "cx":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v15, v0

    .line 893
    .local v15, "cy":F
    iget-boolean v6, v7, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    .line 894
    .local v6, "shouldExit":Z
    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    .line 895
    iput-boolean v5, v7, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 896
    iget-object v0, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez v13, :cond_1

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    .line 900
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    .line 901
    invoke-direct {v7, v8, v14, v15}, Landroid/graphics/drawable/RippleDrawable;->drawPatternedBackground(Landroid/graphics/Canvas;FF)V

    .line 902
    if-eqz v13, :cond_5

    iget-object v0, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_5

    .line 903
    iget-boolean v0, v7, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_2

    .line 904
    iget v0, v7, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 905
    .local v0, "x":F
    iget v1, v7, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 906
    .local v1, "y":F
    iput-boolean v5, v7, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_0

    .line 908
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_2
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 909
    .restart local v0    # "x":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    move/from16 v16, v0

    move/from16 v17, v1

    .line 911
    .end local v0    # "x":F
    .local v16, "x":F
    .local v17, "y":F
    :goto_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    .line 912
    .local v4, "h":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 913
    .local v3, "w":F
    nop

    .line 914
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v18, v3

    .end local v3    # "w":F
    .local v18, "w":F
    move v3, v14

    move/from16 v19, v4

    .end local v4    # "h":F
    .local v19, "h":F
    move v4, v15

    move/from16 v20, v5

    move/from16 v5, v18

    move/from16 v21, v6

    .end local v6    # "shouldExit":Z
    .local v21, "shouldExit":Z
    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/RippleDrawable;->createAnimationProperties(FFFFFF)Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v0

    .line 915
    .local v0, "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/drawable/RippleAnimationSession;

    if-nez v12, :cond_3

    move v5, v11

    goto :goto_1

    :cond_3
    move/from16 v5, v20

    :goto_1
    invoke-direct {v2, v0, v5}, Landroid/graphics/drawable/RippleAnimationSession;-><init>(Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;Z)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v3, v7}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    .line 916
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleAnimationSession;->setOnAnimationUpdated(Ljava/lang/Runnable;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v3, v7}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    .line 917
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleAnimationSession;->setOnSessionEnd(Ljava/util/function/Consumer;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v11, v20

    .line 920
    :goto_2
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/RippleAnimationSession;->setForceSoftwareAnimation(Z)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    .line 921
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleAnimationSession;->enter(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    .line 915
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 902
    .end local v0    # "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    .end local v16    # "x":F
    .end local v17    # "y":F
    .end local v18    # "w":F
    .end local v19    # "h":F
    .end local v21    # "shouldExit":Z
    .restart local v6    # "shouldExit":Z
    :cond_5
    move/from16 v21, v6

    .line 923
    .end local v6    # "shouldExit":Z
    .restart local v21    # "shouldExit":Z
    :goto_3
    if-eqz v21, :cond_6

    .line 924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 925
    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleAnimationSession;

    .line 926
    .local v1, "s":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/RippleAnimationSession;->exit(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;

    .line 924
    .end local v1    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 929
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 930
    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleAnimationSession;

    .line 931
    .restart local v1    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_7

    .line 932
    const-string v2, "RippleDrawable"

    const-string v3, "The RippleDrawable.STYLE_PATTERNED animation is not supported for a non-hardware accelerated Canvas. Skipping animation."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    goto :goto_7

    .line 935
    :cond_7
    if-eqz v12, :cond_8

    .line 938
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v2

    .line 939
    .local v2, "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    move-object v3, v8

    check-cast v3, Landroid/graphics/RecordingCanvas;

    .line 940
    .local v3, "can":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getX()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Landroid/graphics/CanvasProperty;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getY()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v4

    check-cast v24, Landroid/graphics/CanvasProperty;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getMaxRadius()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Landroid/graphics/CanvasProperty;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getPaint()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Landroid/graphics/CanvasProperty;

    .line 941
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Landroid/graphics/CanvasProperty;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getNoisePhase()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v4

    check-cast v28, Landroid/graphics/CanvasProperty;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getColor()I

    move-result v29

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v30

    .line 940
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/RecordingCanvas;->drawRipple(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;ILandroid/graphics/RuntimeShader;)V

    .line 942
    .end local v2    # "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    .end local v3    # "can":Landroid/graphics/RecordingCanvas;
    goto :goto_6

    .line 943
    :cond_8
    nop

    .line 944
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v2

    .line 945
    .local v2, "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getMaxRadius()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 946
    .local v3, "radius":F
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getX()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getY()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getPaint()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 929
    .end local v1    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    .end local v2    # "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    .end local v3    # "radius":F
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 949
    .end local v0    # "i":I
    :cond_9
    :goto_7
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 950
    return-void
.end method

.method private blacklist drawPatternedBackground(Landroid/graphics/Canvas;FF)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .line 953
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    if-eqz v0, :cond_0

    .line 954
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->startBackgroundAnimation()V

    .line 956
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 957
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 958
    .local v0, "p":Landroid/graphics/Paint;
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    .line 959
    .local v1, "newOpacity":F
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 960
    .local v2, "origAlpha":I
    int-to-float v3, v2

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 961
    .local v3, "alpha":I
    if-lez v3, :cond_2

    .line 962
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    .line 963
    .local v4, "origFilter":Landroid/graphics/ColorFilter;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 964
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 965
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, p2, p3, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 966
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 967
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 969
    .end local v4    # "origFilter":Landroid/graphics/ColorFilter;
    :cond_2
    return-void
.end method

.method private blacklist drawSolid(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 823
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->pruneRipples()V

    .line 827
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 828
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .line 829
    .local v1, "saveCount":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 833
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    .line 834
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    .line 836
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 837
    return-void
.end method

.method private blacklist endPatternedAnimations()V
    .locals 2

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleAnimationSession;

    .line 292
    .local v1, "session":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession;->end()V

    .line 290
    .end local v1    # "session":Landroid/graphics/drawable/RippleAnimationSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 295
    return-void
.end method

.method private blacklist enterPatternedBackgroundAnimation(ZZ)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "hovered"    # Z

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    .line 859
    if-eqz p1, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x3e4ccccd    # 0.2f

    :cond_1
    :goto_0
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    .line 860
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 862
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 864
    return-void
.end method

.method private blacklist exitPatternedAnimation()V
    .locals 1

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 855
    return-void
.end method

.method private blacklist exitPatternedBackgroundAnimation()V
    .locals 1

    .line 840
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    .line 841
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 843
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 845
    return-void
.end method

.method private blacklist getComputedRadius()I
    .locals 1

    .line 978
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0

    .line 979
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->computeRadius()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private greylist-max-o getMaskType()I
    .locals 6

    .line 1131
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_1

    .line 1135
    return v1

    .line 1138
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1139
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1141
    return v2

    .line 1143
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 1148
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1149
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1150
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 1151
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v1, :cond_4

    .line 1152
    const/4 v1, 0x1

    return v1

    .line 1150
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1157
    .end local v4    # "i":I
    :cond_5
    return v2
.end method

.method private greylist-max-o isBounded()Z
    .locals 1

    .line 475
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o onHotspotBoundsChanged()V
    .locals 10

    .line 762
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 763
    .local v0, "count":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 764
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 765
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v2, :cond_1

    .line 769
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    .line 772
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_2

    .line 773
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    .line 775
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 776
    .local v2, "newRadius":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 777
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleAnimationSession;

    .line 778
    .local v4, "s":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/RippleAnimationSession;->setRadius(F)V

    .line 779
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v5

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 780
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/RippleShader;->setResolution(FF)V

    .line 781
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    .local v5, "cx":F
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    .line 782
    .local v6, "cy":F
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/graphics/drawable/RippleShader;->setOrigin(FF)V

    .line 783
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 784
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->isForceSoftware()Z

    move-result v7

    if-nez v7, :cond_3

    .line 785
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    .line 786
    invoke-static {v5}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v8

    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 776
    .end local v4    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    .end local v5    # "cx":F
    .end local v6    # "cy":F
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 789
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private greylist-max-o pruneRipples()V
    .locals 6

    .line 1042
    const/4 v0, 0x0

    .line 1045
    .local v0, "remaining":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 1046
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1047
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1048
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleForeground;->hasFinishedExit()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1049
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "remaining":I
    .local v4, "remaining":I
    aget-object v5, v1, v3

    aput-object v5, v1, v0

    move v0, v4

    .line 1047
    .end local v4    # "remaining":I
    .restart local v0    # "remaining":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1054
    .end local v3    # "i":I
    :cond_1
    move v3, v0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1055
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 1054
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1058
    .end local v3    # "i":I
    :cond_2
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1059
    return-void
.end method

.method private blacklist setBackgroundActive(ZZZZ)V
    .locals 3
    .param p1, "hovered"    # Z
    .param p2, "focused"    # Z
    .param p3, "pressed"    # Z
    .param p4, "spenHovered"    # Z

    .line 372
    if-eqz p4, :cond_0

    .line 373
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_3

    .line 377
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 378
    :cond_1
    new-instance v0, Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 379
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleBackground;->setup(FI)V

    .line 381
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_6

    .line 382
    invoke-virtual {v0, p2, p1, p3}, Landroid/graphics/drawable/RippleBackground;->setState(ZZZ)V

    goto :goto_1

    .line 385
    :cond_3
    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_0

    .line 390
    :cond_4
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->exitPatternedBackgroundAnimation()V

    goto :goto_1

    .line 386
    :cond_5
    :goto_0
    if-nez p3, :cond_6

    .line 387
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/RippleDrawable;->enterPatternedBackgroundAnimation(ZZ)V

    .line 393
    :cond_6
    :goto_1
    return-void
.end method

.method private greylist-max-o setRippleActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 352
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_3

    .line 353
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    .line 354
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_1

    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_0

    .line 361
    :cond_1
    if-eqz p1, :cond_2

    .line 362
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->startPatternedAnimation()V

    goto :goto_0

    .line 364
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->exitPatternedAnimation()V

    .line 368
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist startBackgroundAnimation()V
    .locals 3

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    .line 868
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 869
    const-string v0, "RippleDrawable"

    const-string v1, "Thread doesn\'t have a looper. Skipping animation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 872
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    aput v2, v1, v0

    const/4 v0, 0x1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    .line 873
    sget-object v1, Landroid/graphics/drawable/RippleDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 874
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 875
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 879
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 880
    return-void
.end method

.method private blacklist startPatternedAnimation()V
    .locals 1

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 850
    return-void
.end method

.method private greylist-max-o tryRippleEnter()V
    .locals 9

    .line 686
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 689
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_2

    .line 695
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_1

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 697
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 698
    .local v0, "x":F
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .local v1, "y":F
    goto :goto_0

    .line 700
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 701
    .restart local v0    # "x":F
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 704
    .restart local v1    # "y":F
    :goto_0
    new-instance v8, Landroid/graphics/drawable/RippleForeground;

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    iget-boolean v7, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    move-object v2, v8

    move-object v3, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/RippleForeground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V

    iput-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .line 707
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleForeground;->setup(FI)V

    .line 708
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->enter()V

    .line 709
    return-void
.end method

.method private greylist-max-o tryRippleExit()V
    .locals 4

    .line 716
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_1

    .line 717
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    if-nez v1, :cond_0

    .line 718
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/drawable/RippleForeground;

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 720
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    aput-object v0, v1, v2

    .line 721
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->exit()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .line 724
    :cond_1
    return-void
.end method

.method private greylist-max-o updateLocalState()V
    .locals 1

    .line 1413
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 1414
    return-void
.end method

.method private greylist-max-o updateMaskShaderIfNeeded()V
    .locals 9

    .line 1065
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    if-eqz v0, :cond_0

    .line 1066
    return-void

    .line 1069
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    move-result v0

    .line 1070
    .local v0, "maskType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1071
    return-void

    .line 1074
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 1076
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1077
    .local v2, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    .line 1090
    :cond_2
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1091
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 1092
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v3, v5, :cond_3

    goto :goto_0

    .line 1103
    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    .line 1093
    :cond_4
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 1094
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1097
    :cond_5
    nop

    .line 1098
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 1097
    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 1099
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v3, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    .line 1101
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 1106
    :goto_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_6

    .line 1107
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    goto :goto_2

    .line 1109
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1112
    :goto_2
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_7

    .line 1113
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1114
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1118
    :cond_7
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1119
    .local v3, "saveCount":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1120
    .local v4, "left":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1121
    .local v5, "top":I
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1122
    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    .line 1123
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1124
    :cond_8
    if-ne v0, v1, :cond_9

    .line 1125
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    .line 1127
    :cond_9
    :goto_3
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1128
    return-void

    .line 1078
    .end local v3    # "saveCount":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    :cond_a
    :goto_4
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 1079
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1080
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 1081
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    .line 1082
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 1084
    :cond_b
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 1085
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1086
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 606
    .local v0, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    .line 609
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 611
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 612
    .local v1, "color":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 613
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v1, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 616
    :cond_0
    const/4 v2, 0x2

    .line 617
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 618
    .local v2, "effectColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 619
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v2, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    .line 622
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v4, 0x1

    iget v5, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 624
    return-void
.end method

.method private greylist-max-o verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 636
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 638
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 639
    .local v0, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    if-nez v0, :cond_0

    .line 640
    return-void

    .line 643
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v1, :cond_1

    .line 644
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 647
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 648
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 653
    goto :goto_2

    .line 652
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 649
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/drawable/RippleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    .line 652
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 653
    throw v2

    .line 656
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_2
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 660
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 661
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 665
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method bridge synthetic blacklist createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 0

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1332
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 815
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_0

    .line 816
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawSolid(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 818
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawPatterned(Landroid/graphics/Canvas;)V

    .line 820
    :goto_0
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1313
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public whitelist getDirtyBounds()Landroid/graphics/Rect;
    .locals 9

    .line 1267
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1268
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 1269
    .local v0, "drawingBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 1270
    .local v1, "dirtyBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1271
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1273
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    float-to-int v2, v2

    .line 1274
    .local v2, "cX":I
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-int v3, v3

    .line 1275
    .local v3, "cY":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 1277
    .local v4, "rippleBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 1278
    .local v5, "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    iget v6, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1279
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 1280
    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/RippleForeground;->getBounds(Landroid/graphics/Rect;)V

    .line 1281
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1282
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1279
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1285
    .end local v7    # "i":I
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 1286
    .local v7, "background":Landroid/graphics/drawable/RippleBackground;
    if-eqz v7, :cond_1

    .line 1287
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    .line 1288
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1289
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1292
    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1293
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1294
    return-object v1

    .line 1296
    .end local v0    # "drawingBounds":Landroid/graphics/Rect;
    .end local v1    # "dirtyBounds":Landroid/graphics/Rect;
    .end local v2    # "cX":I
    .end local v3    # "cY":I
    .end local v4    # "rippleBounds":Landroid/graphics/Rect;
    .end local v5    # "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    .end local v6    # "N":I
    .end local v7    # "background":Landroid/graphics/drawable/RippleBackground;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEffectColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 522
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 755
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 756
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 315
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 799
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 800
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 801
    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 802
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 803
    aget-object v4, v1, v3

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_0

    .line 804
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 802
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 808
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist getRadius()I
    .locals 1

    .line 544
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 554
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 559
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 560
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 561
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 563
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 564
    return-void
.end method

.method public whitelist invalidateSelf()V
    .locals 1

    .line 1028
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 1029
    return-void
.end method

.method greylist-max-o invalidateSelf(Z)V
    .locals 1
    .param p1, "invalidateMask"    # Z

    .line 1032
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 1034
    if-eqz p1, :cond_0

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 1039
    :cond_0
    return-void
.end method

.method public whitelist isProjected()Z
    .locals 5

    .line 450
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 451
    return v1

    .line 460
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 461
    .local v0, "radius":I
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 462
    .local v2, "drawableBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 463
    .local v3, "hotspotBounds":Landroid/graphics/Rect;
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 464
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_2

    .line 465
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_2

    .line 466
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 467
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    :cond_1
    return v1

    .line 471
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .locals 1

    .line 275
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    .line 277
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->jumpToFinal()V

    .line 285
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    .line 286
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->endPatternedAnimations()V

    .line 287
    return-void
.end method

.method synthetic blacklist lambda$drawPatterned$1$android-graphics-drawable-RippleDrawable()V
    .locals 1

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method synthetic blacklist lambda$drawPatterned$2$android-graphics-drawable-RippleDrawable(Landroid/graphics/drawable/RippleAnimationSession;)V
    .locals 1
    .param p1, "session"    # Landroid/graphics/drawable/RippleAnimationSession;

    .line 918
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 919
    return-void
.end method

.method synthetic blacklist lambda$startBackgroundAnimation$0$android-graphics-drawable-RippleDrawable(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "update"    # Landroid/animation/ValueAnimator;

    .line 876
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 878
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1318
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1322
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 1325
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 1327
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 397
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 399
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 401
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 404
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 405
    .local v0, "count":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 406
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 407
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_2

    .line 411
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->onBoundsChange()V

    .line 414
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v2, :cond_3

    .line 415
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    .line 417
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 418
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    .line 320
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v0

    .line 322
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 323
    .local v1, "enabled":Z
    const/4 v2, 0x0

    .line 324
    .local v2, "pressed":Z
    const/4 v3, 0x0

    .line 325
    .local v3, "focused":Z
    const/4 v4, 0x0

    .line 327
    .local v4, "hovered":Z
    const/4 v5, 0x0

    .line 330
    .local v5, "spenHovered":Z
    array-length v6, p1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_5

    aget v9, p1, v8

    .line 331
    .local v9, "state":I
    const v10, 0x101009e

    if-ne v9, v10, :cond_0

    .line 332
    const/4 v1, 0x1

    goto :goto_1

    .line 333
    :cond_0
    const v10, 0x101009c

    if-ne v9, v10, :cond_1

    .line 334
    const/4 v3, 0x1

    goto :goto_1

    .line 335
    :cond_1
    const v10, 0x10100a7

    if-ne v9, v10, :cond_2

    .line 336
    const/4 v2, 0x1

    goto :goto_1

    .line 337
    :cond_2
    const v10, 0x1010367

    if-ne v9, v10, :cond_3

    .line 338
    const/4 v4, 0x1

    goto :goto_1

    .line 340
    :cond_3
    const v10, 0x1120172

    if-ne v9, v10, :cond_4

    .line 341
    const/4 v5, 0x1

    .line 330
    .end local v9    # "state":I
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 346
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    :cond_6
    invoke-direct {p0, v7}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    .line 347
    invoke-direct {p0, v4, v3, v2, v5}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZZZ)V

    .line 348
    return v0
.end method

.method public whitelist setColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 496
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 501
    return-void

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 568
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 569
    const v0, 0x102002e

    if-ne p1, v0, :cond_0

    .line 570
    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 571
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 574
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 577
    :cond_1
    return v1
.end method

.method public whitelist setEffectColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 511
    if-eqz p1, :cond_0

    .line 514
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 516
    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setForceSoftware(Z)V
    .locals 0
    .param p1, "forceSoftware"    # Z

    .line 1308
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    .line 1309
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 670
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 671
    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 672
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v1, :cond_1

    .line 673
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 676
    :cond_1
    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->move(FF)V

    .line 679
    :cond_2
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    .line 748
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 750
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 751
    return-void
.end method

.method public whitelist setPaddingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 596
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 597
    return-void
.end method

.method public whitelist setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 533
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 535
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 422
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 424
    .local v0, "changed":Z
    if-nez p1, :cond_0

    .line 425
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    goto :goto_1

    .line 426
    :cond_0
    if-eqz v0, :cond_3

    .line 429
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v1, :cond_1

    .line 431
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 438
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    .line 441
    :cond_3
    :goto_1
    return v0
.end method

.method greylist updateRipplePaint()Landroid/graphics/Paint;
    .locals 9

    .line 1210
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 1212
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1213
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1216
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 1217
    .local v0, "x":F
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 1219
    .local v2, "y":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    .line 1222
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_2

    .line 1223
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1224
    .local v3, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v4, v1, :cond_1

    .line 1225
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 1227
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1229
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1231
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v4, v1, :cond_2

    .line 1232
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1233
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v5

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    .line 1232
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1240
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "i":I
    :cond_2
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/RippleDrawable;->clampAlpha(I)I

    move-result v3

    .line 1241
    .local v3, "color":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 1243
    .local v4, "p":Landroid/graphics/Paint;
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v6, :cond_5

    .line 1247
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v6, v6, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v6, v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    or-int v1, v3, v5

    .line 1248
    .local v1, "maskColor":I
    :goto_2
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v6}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v6

    if-eq v6, v1, :cond_4

    .line 1249
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1250
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    or-int v7, v3, v5

    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1251
    invoke-virtual {v8}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1253
    :cond_4
    and-int/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1254
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1255
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1256
    .end local v1    # "maskColor":I
    goto :goto_3

    .line 1257
    :cond_5
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1258
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1259
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1262
    :goto_3
    return-object v4
.end method
