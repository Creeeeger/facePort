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

.field private blacklist mSpenHovered:Z

.field private greylist mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private blacklist mTargetBackgroundOpacity:F

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$XVQ51SKPpzsuu4270RxLZbfOM7U(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->lambda$drawPatterned$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dGxsGxuXDFTTUA4eK5H15etGTHo(Landroid/graphics/drawable/RippleDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$startBackgroundAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wWX-i3HpSpUu6YRQNXPFtF_sMw4(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/drawable/RippleAnimationSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$drawPatterned$2(Landroid/graphics/drawable/RippleAnimationSession;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_0
    if-eqz p3, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const v5, 0x102002e

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mSpenHovered:Z

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNumChildren:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o cancelExitingRipples()V
    .locals 4

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->end()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private blacklist clampAlpha(I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    const v0, 0xffffff

    and-int/2addr v0, p1

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    return v0

    :cond_0
    return p1
.end method

.method private greylist-max-o clearHotspots()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleBackground;->setState(ZZZ)V

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->endPatternedAnimations()V

    return-void
.end method

.method private blacklist computeRadius()F
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

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
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/drawable/RippleShader;

    invoke-direct {v3}, Landroid/graphics/drawable/RippleShader;-><init>()V

    move-object v12, v3

    nop

    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/high16 v13, -0x1000000

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v3

    :goto_0
    invoke-direct {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->clampAlpha(I)I

    move-result v14

    iget-object v3, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v4

    const v5, -0xff01

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    long-to-float v11, v3

    invoke-virtual {v12, v14, v15}, Landroid/graphics/drawable/RippleShader;->setColor(II)V

    move/from16 v10, p3

    move/from16 v9, p4

    invoke-virtual {v12, v10, v9}, Landroid/graphics/drawable/RippleShader;->setOrigin(FF)V

    move/from16 v8, p1

    move/from16 v7, p2

    invoke-virtual {v12, v8, v7}, Landroid/graphics/drawable/RippleShader;->setTouch(FF)V

    move/from16 v6, p5

    move/from16 v5, p6

    invoke-virtual {v12, v6, v5}, Landroid/graphics/drawable/RippleShader;->setResolution(FF)V

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/RippleShader;->setNoisePhase(F)V

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/RippleShader;->setRadius(F)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/RippleShader;->setProgress(F)V

    new-instance v16, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object v8, v1

    move-object/from16 v9, v20

    move v10, v14

    move/from16 v17, v11

    move-object v11, v12

    invoke-direct/range {v3 .. v11}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V

    iget-object v4, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    goto :goto_1

    :cond_1
    iget-object v4, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    :goto_1
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    return-object v3
.end method

.method private greylist-max-o drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-nez v0, :cond_1

    if-gtz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v5

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, p1, v5}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_2
    if-lez v2, :cond_3

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_3

    aget-object v8, v6, v7

    invoke-virtual {v8, p1, v5}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, v5}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_4
    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private greylist-max-o drawContent(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v4, 0x102002e

    if-eq v3, v4, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o drawMask(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private blacklist drawPatterned(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v10

    iget-boolean v0, v7, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    move v12, v0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    iget-boolean v13, v7, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v14, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v15, v0

    iget-boolean v6, v7, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    iput-boolean v5, v7, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    iget-object v0, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    invoke-direct {v7, v8, v14, v15}, Landroid/graphics/drawable/RippleDrawable;->drawPatternedBackground(Landroid/graphics/Canvas;FF)V

    if-eqz v13, :cond_5

    iget-object v0, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_5

    iget-boolean v0, v7, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_2

    iget v0, v7, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iget v1, v7, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    iput-boolean v5, v7, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    move/from16 v16, v0

    move/from16 v17, v1

    :goto_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    nop

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v18, v3

    move v3, v14

    move/from16 v19, v4

    move v4, v15

    move/from16 v20, v5

    move/from16 v5, v18

    move/from16 v21, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/RippleDrawable;->createAnimationProperties(FFFFFF)Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v0

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

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleAnimationSession;->setOnAnimationUpdated(Ljava/lang/Runnable;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v3, v7}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleAnimationSession;->setOnSessionEnd(Ljava/util/function/Consumer;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v11, v20

    :goto_2
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/RippleAnimationSession;->setForceSoftwareAnimation(Z)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleAnimationSession;->enter(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move/from16 v21, v6

    :goto_3
    if-eqz v21, :cond_6

    const/4 v0, 0x0

    :goto_4
    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/RippleAnimationSession;->exit(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_5
    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v1, v7, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "RippleDrawable"

    const-string v3, "The RippleDrawable.STYLE_PATTERNED animation is not supported for a non-hardware accelerated Canvas. Skipping animation."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v2

    move-object v3, v8

    check-cast v3, Landroid/graphics/RecordingCanvas;

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

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/RecordingCanvas;->drawRipple(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;ILandroid/graphics/RuntimeShader;)V

    goto :goto_6

    :cond_8
    nop

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getMaxRadius()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

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

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_9
    :goto_7
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private blacklist drawPatternedBackground(Landroid/graphics/Canvas;FF)V
    .locals 6

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->startBackgroundAnimation()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v3, v2

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, p2, p3, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method

.method private blacklist drawSolid(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->pruneRipples()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private blacklist endPatternedAnimations()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private blacklist enterPatternedBackgroundAnimation(ZZZ)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    const v1, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    const v1, 0x3f19999a    # 0.6f

    :cond_0
    iput v1, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private blacklist exitPatternedAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private blacklist exitPatternedBackgroundAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private blacklist getComputedRadius()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->computeRadius()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private greylist-max-o getMaskType()I
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v1, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method private greylist-max-o isBounded()Z
    .locals 1

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

.method private synthetic blacklist lambda$drawPatterned$1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$drawPatterned$2(Landroid/graphics/drawable/RippleAnimationSession;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$startBackgroundAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private greylist-max-o onHotspotBoundsChanged()V
    .locals 10

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/RippleAnimationSession;->setRadius(F)V

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v5

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/RippleShader;->setResolution(FF)V

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/graphics/drawable/RippleShader;->setOrigin(FF)V

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->isForceSoftware()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    invoke-static {v5}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v8

    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private greylist-max-o pruneRipples()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleForeground;->hasFinishedExit()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    aget-object v5, v1, v3

    aput-object v5, v1, v0

    move v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    return-void
.end method

.method private greylist-max-o setRippleActive(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->startPatternedAnimation()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->exitPatternedAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist startBackgroundAnimation()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "RippleDrawable"

    const-string v1, "Thread doesn\'t have a looper. Skipping animation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/graphics/drawable/RippleDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist startPatternedAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private greylist-max-o tryRippleEnter()V
    .locals 9

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

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

    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleForeground;->setup(FI)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->enter()V

    return-void
.end method

.method private greylist-max-o tryRippleExit()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/RippleForeground;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    :cond_1
    return-void
.end method

.method private greylist-max-o updateLocalState()V
    .locals 1

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private greylist-max-o updateMaskShaderIfNeeded()V
    .locals 9

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v3, v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    nop

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :goto_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_6

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    :goto_2
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_7

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_7
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_8
    if-ne v0, v1, :cond_9

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_3
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_a
    :goto_4
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :cond_b
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v1, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_0
    nop

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v2, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return-void
.end method

.method private greylist-max-o verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

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

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/drawable/RippleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_1
    :goto_2
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawSolid(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawPatterned(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public whitelist getDirtyBounds()Landroid/graphics/Rect;
    .locals 9

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v6, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/RippleForeground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEffectColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_0

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist getRadius()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public blacklist getTargetBackgroundOpacity()F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method public whitelist invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method greylist-max-o invalidateSelf(Z)V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_0
    return-void
.end method

.method public whitelist isProjected()Z
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->jumpToFinal()V

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->endPatternedAnimations()V

    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->onBoundsChange()V

    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .locals 13

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p1

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const/4 v10, 0x1

    if-ge v9, v7, :cond_6

    aget v11, p1, v9

    const v12, 0x101009e

    if-ne v11, v12, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const v12, 0x101009c

    if-ne v11, v12, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const v12, 0x10100a7

    if-ne v11, v12, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const v12, 0x1010367

    if-ne v11, v12, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const v12, 0x101009d

    if-ne v11, v12, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const v12, 0x11201af

    if-ne v11, v12, :cond_5

    iput-boolean v10, p0, Landroid/graphics/drawable/RippleDrawable;->mSpenHovered:Z

    :cond_5
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    move v8, v10

    :cond_7
    invoke-direct {p0, v8}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    invoke-virtual {p0, v4, v3, v2, v5}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZZZ)V

    return v0
.end method

.method public blacklist setBackgroundActive(ZZZZ)V
    .locals 3

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mSpenHovered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mSpenHovered:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_5

    if-eqz p4, :cond_1

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    :goto_0
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "RippleDrawable"

    const-string v1, "Thread doesn\'t have a looper. Skipping animation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    new-instance v0, Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleBackground;->setup(FI)V

    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0, p2, p1, p3}, Landroid/graphics/drawable/RippleBackground;->setState(ZZZ)V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->exitPatternedBackgroundAnimation()V

    goto :goto_2

    :cond_7
    :goto_1
    if-nez p3, :cond_8

    invoke-direct {p0, p2, p1, p4}, Landroid/graphics/drawable/RippleDrawable;->enterPatternedBackgroundAnimation(ZZZ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public whitelist setColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x102002e

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public whitelist setEffectColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setForceSoftware(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    return-void
.end method

.method public whitelist setHotspot(FF)V
    .locals 1

    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->move(FF)V

    :cond_2
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    return-void
.end method

.method public whitelist setPaddingMode(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    return-void
.end method

.method public whitelist setRadius(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    :cond_3
    :goto_1
    return v0
.end method

.method greylist updateRipplePaint()Landroid/graphics/Paint;
    .locals 9

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v4, v1, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

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

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

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

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v6, v6, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v6, v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    or-int v1, v3, v5

    :goto_2
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v6}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v6

    if-eq v6, v1, :cond_4

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    or-int v7, v3, v5

    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_4
    and-int/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_3
    return-object v4
.end method
