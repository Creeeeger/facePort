.class public Lcom/android/internal/policy/TransitionAnimation;
.super Ljava/lang/Object;
.source "TransitionAnimation.java"


# static fields
.field private static final blacklist CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field public static final blacklist DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final blacklist RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final blacklist RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final blacklist THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final blacklist TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final blacklist WALLPAPER_TRANSITION_CHANGE:I = 0x1

.field public static final blacklist WALLPAPER_TRANSITION_CLOSE:I = 0x3

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_CLOSE:I = 0x5

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_OPEN:I = 0x4

.field public static final blacklist WALLPAPER_TRANSITION_NONE:I = 0x0

.field public static final blacklist WALLPAPER_TRANSITION_OPEN:I = 0x2

.field public static final blacklist WALLPAPER_TRANSITION_TRANSLUCENT_OPEN:I = 0x6


# instance fields
.field private final blacklist mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mClipRevealTranslationY:I

.field private final blacklist mConfigShortAnimTime:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDebug:Z

.field private final blacklist mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mDefaultWindowAnimationStyleResId:I

.field private blacklist mDisplayId:I

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mLowRamRecentsEnabled:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTmpFromClipRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpToClipRect:Landroid/graphics/Rect;

.field private final blacklist mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public static synthetic blacklist $r8$lambda$nV5dl0nO-bayQzttfmqKVLs_2gE(Lcom/android/internal/policy/TransitionAnimation;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$0(F)F

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zYxFxJxkv5EOujazB0_cD5CJZ3Q(Lcom/android/internal/policy/TransitionAnimation;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$1(F)F

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDisplayId:I

    iput-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    iput-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static blacklist calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 3

    if-nez p0, :cond_0

    const-wide/16 v0, 0x150

    return-wide v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42a80000    # 84.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x43a80000    # 336.0f

    add-float/2addr v1, v2

    float-to-long v1, v1

    return-wide v1
.end method

.method public static blacklist computePivot(IF)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    int-to-float v1, p0

    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static blacklist configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .locals 1

    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsHdrLayers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method private blacklist createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    if-eqz p4, :cond_0

    div-float v7, v3, v5

    goto :goto_0

    :cond_0
    div-float v7, v5, v3

    :goto_0
    move v9, v7

    if-eqz p4, :cond_1

    div-float v7, v4, v6

    goto :goto_1

    :cond_1
    div-float v7, v6, v4

    :goto_1
    move v11, v7

    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v8, 0x0

    if-nez v2, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    :goto_2
    move v15, v10

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    :goto_3
    move v14, v8

    if-eqz p4, :cond_4

    move v8, v5

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    int-to-float v10, v15

    add-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v23, v8, v10

    if-eqz p4, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    int-to-float v12, v14

    add-float/2addr v8, v12

    div-float v24, v8, v10

    if-eqz p4, :cond_6

    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v8, v16

    move/from16 v13, v23

    move/from16 v25, v14

    move/from16 v14, v24

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_6

    :cond_6
    move/from16 v25, v14

    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v8

    move/from16 v18, v9

    move/from16 v20, v11

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_6
    move-object/from16 v8, v16

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v14, v16

    if-eqz p4, :cond_7

    sub-int v16, v10, v13

    goto :goto_7

    :cond_7
    sub-int v16, v13, v10

    :goto_7
    move/from16 v17, v16

    if-eqz p4, :cond_8

    sub-int v16, v12, v14

    goto :goto_8

    :cond_8
    sub-int v16, v14, v12

    :goto_8
    move/from16 v18, v16

    if-eqz p4, :cond_9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move/from16 v1, v17

    int-to-float v2, v1

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    int-to-float v4, v3

    move/from16 v19, v5

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    :cond_9
    move/from16 v19, v5

    move/from16 v1, v17

    const/4 v5, 0x0

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v1

    int-to-float v4, v3

    invoke-direct {v0, v5, v2, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_9
    nop

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v7
.end method

.method private static blacklist createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public static blacklist createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;
    .locals 5

    if-eqz p3, :cond_0

    const v0, 0x10a007b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    const v0, 0x10a007c

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x10a007d

    goto :goto_0

    :cond_2
    const v0, 0x10a007a

    :goto_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public static blacklist getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v6, p1

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v5

    invoke-static {v4, v5, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-virtual {v5, v0, v6}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/media/Image;->getPlaneCount()I

    move-result v7

    if-ge v7, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v5}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v7, 0x0

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v10

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    const/16 v13, 0xa

    const/16 v14, 0x100

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    add-int/lit8 v3, v9, -0xa

    move/from16 v7, v16

    :goto_0
    if-ge v7, v3, :cond_3

    const/4 v0, 0x0

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v16

    add-int/lit8 v0, v10, -0x1

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v0

    aget v18, v14, v16

    const/16 v17, 0x1

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v16

    aget v18, v14, v0

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v0

    add-int/lit8 v7, v7, 0xa

    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    add-int/lit8 v3, v10, -0xa

    :goto_1
    if-ge v0, v3, :cond_4

    const/4 v7, 0x0

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v16

    add-int/lit8 v7, v9, -0x1

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v7

    aget v18, v14, v16

    const/16 v17, 0x1

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v16

    aget v18, v14, v7

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v7

    add-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    add-int v0, v9, v10

    div-int/lit8 v0, v0, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v16, v1

    array-length v1, v14

    if-ge v15, v1, :cond_6

    aget v1, v14, v15

    add-int/2addr v3, v1

    if-lt v3, v0, :cond_5

    move v7, v15

    goto :goto_3

    :cond_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    goto :goto_2

    :cond_6
    :goto_3
    int-to-float v1, v7

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v1, v1, v17

    return v1

    :cond_7
    :goto_4
    return v1

    :cond_8
    move-object/from16 v6, p1

    :goto_5
    return v1
.end method

.method public static blacklist getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Landroid/view/SurfaceControl;)F
    .locals 2

    invoke-static {p0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/view/SurfaceControl;II)F

    move-result v0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    return v0
.end method

.method public static blacklist getBorderLuma(Landroid/view/SurfaceControl;II)F
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1
    return v2
.end method

.method private blacklist getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_7

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "android"

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_4

    const-string v0, "android"

    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-nez v3, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v1

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    return-object v1

    :cond_7
    return-object v1
.end method

.method private blacklist getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    const-string p1, "android"

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-nez v0, :cond_2

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for container not available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method private static blacklist getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I
    .locals 6

    mul-int v0, p2, p4

    mul-int v1, p1, p3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    mul-int/lit8 v5, v2, 0x16

    add-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x5

    return v4
.end method

.method private blacklist getThumbnailTransitionState(ZZ)I
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist getTransitCompatType(II)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 v0, 0xe

    return v0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/16 v0, 0xf

    return v0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const/4 v0, 0x6

    return v0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 v0, 0x7

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist initAttributeCache(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-static {p0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/AttributeCache;->monitorPackageRemove(Landroid/os/Handler;)V

    return-void
.end method

.method public static blacklist isDefaultPackageAnimRes(I)Z
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$new$0(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-float v1, p1, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$new$1(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private blacklist loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    if-ltz p3, :cond_2

    if-eqz p1, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    const-string v3, "android"

    :goto_0
    move-object p1, v3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v4, v3, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    :cond_2
    if-eqz p4, :cond_3

    invoke-static {v1}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(I)I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    if-eq p5, v3, :cond_4

    invoke-static {v1, p5}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v1

    :cond_4
    :goto_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_TRANSITION:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mDisplayId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomCoverAnimIfNeeded(I)I

    move-result v1

    :cond_5
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomAnimIfNeeded(I)I

    move-result v1

    :cond_6
    invoke-static {v1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v0
.end method

.method public static blacklist loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to load animation resource"

    invoke-static {p2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist loadDimAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x10a00a9

    goto :goto_0

    :cond_0
    const v0, 0x10a00a6

    :goto_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private blacklist prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 7

    packed-switch p4, :pswitch_data_0

    const/16 v0, 0x150

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    nop

    :goto_0
    int-to-long v4, v0

    iget-object v6, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-eqz p5, :cond_2

    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_2
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object p0
.end method

.method private blacklist setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private blacklist shouldScaleDownThumbnailTransition(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist updateToCustomAnimIfNeeded(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    return p1

    :sswitch_0
    const v0, 0x10a00bf

    return v0

    :sswitch_1
    const v0, 0x10a00be

    return v0

    :sswitch_2
    const v0, 0x10a00bd

    return v0

    :sswitch_3
    const v0, 0x10a00bc

    return v0

    :sswitch_4
    const v0, 0x10a00b9

    return v0

    :sswitch_5
    const v0, 0x10a00b8

    return v0

    :sswitch_6
    const v0, 0x10a00b7

    return v0

    :sswitch_7
    const v0, 0x10a00b6

    return v0

    :sswitch_8
    const v0, 0x10a00ad

    return v0

    :sswitch_9
    const v0, 0x10a00ac

    return v0

    :sswitch_a
    const v0, 0x10a00ab

    return v0

    :sswitch_b
    const v0, 0x10a00aa

    return v0

    :sswitch_c
    const v0, 0x10a00a8

    return v0

    :sswitch_d
    const v0, 0x10a00a7

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10a000d -> :sswitch_d
        0x10a000e -> :sswitch_c
        0x10a000f -> :sswitch_b
        0x10a0010 -> :sswitch_a
        0x10a0011 -> :sswitch_9
        0x10a0012 -> :sswitch_8
        0x10a0160 -> :sswitch_7
        0x10a0161 -> :sswitch_6
        0x10a016a -> :sswitch_5
        0x10a016c -> :sswitch_4
        0x10a0179 -> :sswitch_3
        0x10a017a -> :sswitch_2
        0x10a0181 -> :sswitch_1
        0x10a0182 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist updateToTranslucentAnimIfNeeded(I)I
    .locals 1

    const v0, 0x10a000f

    if-ne p0, v0, :cond_0

    const v0, 0x10a0012

    return v0

    :cond_0
    const v0, 0x10a000e

    if-ne p0, v0, :cond_1

    const v0, 0x10a0011

    return v0

    :cond_1
    return p0
.end method

.method private static blacklist updateToTranslucentAnimIfNeeded(II)I
    .locals 1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const v0, 0x10a000f

    if-ne p0, v0, :cond_0

    const v0, 0x10a0012

    return v0

    :cond_0
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    const v0, 0x10a000e

    if-ne p0, v0, :cond_1

    const v0, 0x10a0011

    return v0

    :cond_1
    return p0
.end method

.method public static blacklist wallpaperTransitTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "WALLPAPER_TRANSLUCENT_OPEN"

    return-object v0

    :pswitch_1
    const-string v0, "WALLPAPER_INTRA_CLOSE"

    return-object v0

    :pswitch_2
    const-string v0, "WALLPAPER_INTRA_OPEN"

    return-object v0

    :pswitch_3
    const-string v0, "WALLPAPER_CLOSE"

    return-object v0

    :pswitch_4
    const-string v0, "WALLPAPER_OPEN"

    return-object v0

    :pswitch_5
    const-string v0, "WALLPAPER_CHANGE"

    return-object v0

    :pswitch_6
    const-string v0, "WALLPAPER_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist createAspectScaledThumbnailEnterExitAnimationLocked(ZZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v8}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v13, :cond_0

    int-to-float v9, v13

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    move/from16 v16, v9

    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_1

    int-to-float v9, v11

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    move/from16 v17, v9

    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget v10, v3, Landroid/graphics/Rect;->left:I

    sub-int v12, v9, v10

    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int v18, v9, v10

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v19

    const/16 v9, 0xe

    const/4 v10, 0x0

    packed-switch v19, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid thumbnail transition state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-ne v1, v9, :cond_2

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v10, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v22, v15

    goto/16 :goto_c

    :cond_2
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v22, v15

    goto/16 :goto_c

    :pswitch_1
    if-ne v1, v9, :cond_3

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v22, v15

    goto/16 :goto_c

    :cond_3
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v22, v15

    goto/16 :goto_c

    :pswitch_2
    if-eqz p9, :cond_4

    if-eqz p2, :cond_4

    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v1, v8

    move/from16 v22, v15

    goto/16 :goto_c

    :cond_4
    if-eqz p9, :cond_5

    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v1, v8

    move/from16 v22, v15

    goto/16 :goto_c

    :cond_5
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v9, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    move/from16 v10, p3

    invoke-direct {v0, v10}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int v8, v14, v8

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v1

    int-to-float v1, v8

    div-float v1, v16, v1

    div-float v8, v17, v1

    float-to-int v8, v8

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    if-eqz p2, :cond_6

    move/from16 v22, v1

    goto :goto_2

    :cond_6
    const/high16 v22, 0x3f800000    # 1.0f

    :goto_2
    if-eqz p2, :cond_7

    const/high16 v23, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    move/from16 v23, v1

    :goto_3
    if-eqz p2, :cond_8

    move/from16 v24, v1

    goto :goto_4

    :cond_8
    const/high16 v24, 0x3f800000    # 1.0f

    :goto_4
    if-eqz p2, :cond_9

    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    move/from16 v25, v1

    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v20, 0x40000000    # 2.0f

    div-float v26, v6, v20

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v20

    iget v7, v3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float v27, v6, v7

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v20

    move/from16 v21, v8

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v20

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v20

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v20

    mul-float/2addr v2, v1

    sub-float/2addr v10, v2

    iget-boolean v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    if-eqz v2, :cond_a

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_a

    if-eqz p2, :cond_a

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v20, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    move/from16 v22, v15

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v15

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v10, v1

    goto :goto_6

    :cond_a
    move/from16 v20, v1

    move/from16 v22, v15

    :goto_6
    sub-float v1, v6, v7

    sub-float v2, v8, v10

    if-eqz p2, :cond_b

    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v23, v6

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_b
    move/from16 v23, v6

    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_7
    move-object v5, v15

    if-eqz p2, :cond_c

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    const/4 v15, 0x0

    invoke-static {v1, v15, v6, v15}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-static {v15, v1, v15, v6}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v6

    :goto_8
    nop

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b

    :cond_d
    move/from16 v22, v15

    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    iput v2, v1, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_e

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_e
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_9
    nop

    if-eqz p2, :cond_f

    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    invoke-static {v5, v2, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    :goto_a
    nop

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_b
    move-object v8, v9

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    move-object v1, v8

    :goto_c
    const-wide/16 v4, 0x150

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object v8, v1

    move v9, v14

    move/from16 v10, v22

    move v6, v11

    move v7, v12

    move-wide v11, v4

    move v4, v13

    move-object v13, v2

    invoke-static/range {v8 .. v13}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 6

    nop

    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v1

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v14, p5

    invoke-direct {v0, v14, v7}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    if-lez v15, :cond_0

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_0

    :cond_0
    move/from16 v16, v7

    :goto_0
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float v8, v8, v16

    float-to-int v8, v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    move v9, v7

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    sub-int v10, v17, v19

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    sub-int v11, v18, v20

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v18, v20

    if-le v13, v3, :cond_1

    sub-int v3, v18, v20

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v13

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v3, v7

    move/from16 v21, v9

    move/from16 v22, v11

    goto :goto_1

    :cond_1
    move v3, v7

    move/from16 v21, v9

    move/from16 v22, v11

    :goto_1
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v17, v19

    if-le v7, v9, :cond_2

    sub-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    const/4 v10, 0x0

    const/4 v12, 0x1

    :cond_2
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v17, v19

    if-ge v7, v9, :cond_3

    add-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    const/4 v12, 0x1

    move v13, v8

    move v11, v12

    move v12, v10

    goto :goto_2

    :cond_3
    move v13, v8

    move v11, v12

    move v12, v10

    :goto_2
    int-to-float v7, v13

    int-to-float v8, v3

    move-object/from16 v10, p4

    invoke-static {v11, v7, v8, v10}, Lcom/android/internal/policy/TransitionAnimation;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    new-instance v7, Lcom/android/internal/policy/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v12

    const/4 v10, 0x0

    invoke-direct {v7, v12, v5, v10, v6}, Lcom/android/internal/policy/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    long-to-float v7, v8

    const/high16 v23, 0x40200000    # 2.5f

    div-float v7, v7, v23

    move/from16 v23, v11

    float-to-long v10, v7

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v13

    int-to-float v11, v3

    invoke-direct {v7, v10, v4, v11, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v4, v7

    if-eqz v23, :cond_4

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_4
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v25, Lcom/android/internal/policy/ClipRectTBAnimation;

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v10, v22, v7

    const/16 v26, 0x0

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v27, 0x0

    move-object/from16 v7, v25

    move-wide/from16 v28, v8

    move/from16 v8, v22

    move v9, v10

    move/from16 v10, v27

    move-object/from16 v24, v11

    move v11, v15

    move/from16 v27, v12

    move/from16 v12, v21

    move/from16 v30, v13

    move/from16 v13, v26

    move-object/from16 v14, v24

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/policy/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-wide/from16 v8, v28

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x4

    div-long v10, v8, v10

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    invoke-virtual {v13, v6, v15, v6, v15}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    move-object v3, v13

    goto :goto_7

    :cond_5
    packed-switch v1, :pswitch_data_0

    const-wide/16 v5, 0x150

    goto :goto_4

    :pswitch_0
    iget v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v5, v3

    nop

    :goto_4
    const/16 v3, 0xe

    if-eq v1, v3, :cond_7

    const/16 v3, 0xf

    if-ne v1, v3, :cond_6

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_5
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    :goto_6
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :goto_7
    return-object v3

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;
    .locals 9

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050148

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v0, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v1, v4

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    return-object v5
.end method

.method public blacklist createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v4, p3

    invoke-direct {v0, v4, v3}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v7, v3

    neg-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x0

    cmpg-float v13, v8, v9

    if-gtz v13, :cond_0

    cmpg-float v13, v10, v11

    if-gtz v13, :cond_0

    new-instance v13, Landroid/view/animation/ClipRectAnimation;

    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v13, v14, v15}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    div-float v14, v8, v9

    div-float v15, v10, v11

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v13, v14, v7, v15, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v10

    div-float/2addr v7, v11

    float-to-int v12, v7

    :goto_0
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    int-to-float v13, v13

    iget v14, v1, Landroid/graphics/Rect;->top:I

    sub-int v14, v5, v14

    sub-int/2addr v14, v12

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v7, v13, v15, v14, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v13, 0x150

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    return-object v6
.end method

.method public blacklist createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-direct {v0, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    new-instance v17, Landroid/view/animation/ScaleAnimation;

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v10, v8}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v15

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v9}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v10, v17

    move v11, v8

    move v13, v9

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v11

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    move-object v5, v7

    goto :goto_1

    :cond_0
    const/16 v8, 0xe

    if-eq v1, v8, :cond_2

    const/16 v8, 0xf

    if-ne v1, v8, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v7, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v8

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-wide/16 v7, 0x150

    goto :goto_2

    :pswitch_0
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v7, v7

    nop

    :goto_2
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v2, v4, v2, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    int-to-float v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v7, v13

    div-float v21, v7, v5

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v12, p5

    move-object/from16 v10, p6

    invoke-direct {v0, v12, v10, v7}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move/from16 v11, p4

    invoke-direct {v0, v11}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v14, v21, v4

    mul-float/2addr v9, v14

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v9, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v4, v21

    sub-float v15, v4, v15

    mul-float/2addr v14, v15

    iget v15, v1, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-float v4, v4, v21

    move/from16 v22, v15

    move v15, v14

    move/from16 v26, v9

    move v9, v7

    move/from16 v7, v26

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    const/4 v4, 0x0

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v22, v15

    move v15, v14

    move/from16 v26, v9

    move v9, v7

    move/from16 v7, v26

    :goto_1
    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    const-wide/16 v10, 0x150

    if-eqz p7, :cond_3

    new-instance v23, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v14, v23

    move/from16 v12, v16

    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v18

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    sget-object v15, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v15, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v10, v15

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v24, v4

    move/from16 v23, v5

    const-wide/16 v4, 0x150

    invoke-virtual {v10, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static {v9, v7, v8, v12}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v11

    sget-object v15, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    div-float v15, v15, v21

    float-to-int v15, v15

    iput v15, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    div-float v15, v15, v21

    float-to-int v15, v15

    iput v15, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_2

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    int-to-float v15, v15

    mul-float v15, v15, v21

    float-to-int v15, v15

    iget v5, v2, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v5, v5, v21

    float-to-int v5, v5

    iget v1, v2, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v21

    float-to-int v1, v1

    move/from16 v25, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v4, v15, v5, v1, v3}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_2

    :cond_2
    move/from16 v25, v3

    :goto_2
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object v3, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x150

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v1, v3

    goto :goto_3

    :cond_3
    move/from16 v25, v3

    move/from16 v24, v4

    move/from16 v23, v5

    move v10, v14

    move/from16 v12, v16

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v14, v1

    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v24

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    sget-object v3, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x150

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v5, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static {v7, v9, v12, v8}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v10

    sget-object v11, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v4, v3

    move-object v1, v4

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    move v5, v7

    move-object v7, v1

    move v14, v8

    move v8, v13

    move v15, v9

    move v9, v3

    move v3, v12

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v4

    return-object v4
.end method

.method public blacklist createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 7

    nop

    invoke-static {p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v5, p6

    invoke-direct {v0, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v4, :cond_1

    int-to-float v7, v4

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    if-lez v8, :cond_3

    int-to-float v9, v8

    goto :goto_3

    :cond_3
    move v9, v6

    :goto_3
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v10

    const/4 v11, 0x0

    packed-switch v10, :pswitch_data_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v11, "Invalid thumbnail transition state"

    invoke-direct {v6, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    int-to-float v12, v2

    div-float v12, v7, v12

    int-to-float v13, v3

    div-float v15, v9, v13

    new-instance v20, Landroid/view/animation/ScaleAnimation;

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-static {v13, v12}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v18

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v15}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v19

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v13, v20

    move/from16 v21, v15

    move v15, v12

    move/from16 v17, v21

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v6, v14

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object v14, v11

    goto :goto_4

    :pswitch_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    goto :goto_4

    :pswitch_2
    const/16 v12, 0xe

    if-ne v1, v12, :cond_4

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v12

    goto :goto_4

    :cond_4
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    goto :goto_4

    :pswitch_3
    int-to-float v6, v2

    div-float v6, v7, v6

    int-to-float v11, v3

    div-float v15, v9, v11

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v6}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v15}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v17

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v11, v18

    move v12, v6

    move v14, v15

    move/from16 v20, v15

    move/from16 v15, v19

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v14, v18

    nop

    :goto_4
    invoke-direct {v0, v14, v2, v3, v1}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAnimationResId(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 4

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_0
    invoke-static {v0, p3}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomAnimIfNeeded(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public blacklist getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    :cond_0
    return v0
.end method

.method public blacklist getDefaultAnimationResId(II)I
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const-string v1, "android"

    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_0
    invoke-static {v0, p2}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomAnimIfNeeded(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public blacklist loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_0
    invoke-static {v0, p3}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_TRANSITION:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDisplayId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomCoverAnimIfNeeded(I)I

    move-result v0

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->updateToCustomAnimIfNeeded(I)I

    move-result v0

    :cond_2
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 3

    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "android"

    const v1, 0x10a016b

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "android"

    const v1, 0x10a0027

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationAttr(II)Landroid/view/animation/Animation;
    .locals 6

    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    const/4 v4, 0x0

    const-string v1, "android"

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "android"

    iget v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationRes(I)Landroid/view/animation/Animation;
    .locals 1

    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;
    .locals 4

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2
.end method

.method public blacklist loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;
    .locals 1

    const v0, 0x10a0182

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadResumeAffordanceAnimation()Landroid/view/animation/Animation;
    .locals 1

    const v0, 0x10a00b2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x10a0173

    goto :goto_0

    :cond_0
    const v0, 0x10a0174

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x10a0175

    goto :goto_0

    :cond_0
    const v0, 0x10a0176

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist overrideDisplayId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDisplayId:I

    return-void
.end method

.method public blacklist updateToCustomCoverAnimIfNeeded(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    return p1

    :sswitch_0
    const v0, 0x10a00b1

    return v0

    :sswitch_1
    const v0, 0x10a00b0

    return v0

    :sswitch_2
    const v0, 0x10a00af

    return v0

    :sswitch_3
    const v0, 0x10a00ae

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10a000d -> :sswitch_3
        0x10a000e -> :sswitch_2
        0x10a000f -> :sswitch_1
        0x10a0010 -> :sswitch_0
        0x10a0160 -> :sswitch_3
        0x10a0161 -> :sswitch_2
        0x10a016a -> :sswitch_1
        0x10a016c -> :sswitch_0
        0x10a0179 -> :sswitch_1
        0x10a017a -> :sswitch_0
        0x10a0181 -> :sswitch_3
        0x10a0182 -> :sswitch_2
    .end sparse-switch
.end method
