.class public Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final GLOW_MAX_SCALE_FACTOR:F

.field public final mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

.field public mBottomProp:Landroid/graphics/CanvasProperty;

.field public mDark:Z

.field public mDrawingHardwareGlow:Z

.field public final mEnterHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field public final mExitHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field public mGlowAlpha:F

.field public mGlowScale:F

.field public final mHandler:Landroid/os/Handler;

.field public final mInterpolator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$LogInterpolator;

.field public mLastDark:Z

.field public mLeftProp:Landroid/graphics/CanvasProperty;

.field public mMaxWidth:I

.field public final mMaxWidthResource:I

.field public mOnInvisibleRunnable:Ljava/lang/Runnable;

.field public mPaintProp:Landroid/graphics/CanvasProperty;

.field public mPressed:Z

.field public mRightProp:Landroid/graphics/CanvasProperty;

.field public mRipplePaint:Landroid/graphics/Paint;

.field public final mRunningAnimations:Ljava/util/HashSet;

.field public mRxProp:Landroid/graphics/CanvasProperty;

.field public mRyProp:Landroid/graphics/CanvasProperty;

.field public mSpeedUpNextFade:Z

.field public mSupportHardware:Z

.field public final mTargetView:Landroid/view/View;

.field public final mTmpArray:Ljava/util/ArrayList;

.field public mTopProp:Landroid/graphics/CanvasProperty;

.field public mType:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

.field public mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, 0x3faccccd    # 1.35f

    iput v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowScale:F

    new-instance v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$LogInterpolator;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$LogInterpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "exitHardware"

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "enterHardware"

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    sget-object v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mType:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;-><init>(Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;)V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    iput p3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mMaxWidthResource:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mMaxWidth:I

    iput-object p2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput p4, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/RecordingCanvas;

    iget-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mType:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    sget-object v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    iget-object v8, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPressed:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mVisible:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mOnInvisibleRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mOnInvisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mOnInvisibleRunnable:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public drawSoftware(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v3, :cond_2

    move v4, v2

    :cond_2
    if-eqz v3, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mType:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    sget-object v3, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$Type;

    if-ne p0, v3, :cond_4

    sub-float p0, v1, v5

    sub-float v3, v2, v4

    add-float/2addr v5, v1

    add-float v6, v2, v4

    move-object v1, p1

    move v2, p0

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    neg-float v3, v5

    move-object v1, p1

    move v2, v3

    move v4, v5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final endAnimations(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyButtonRipple.endAnim: reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cancel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mVisible:Z

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public enterHardware()V
    .locals 9

    const-string v0, "enterHardware"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_0
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$LogInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_2

    :cond_2
    iput-object v3, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_2
    new-instance v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v4

    add-float/2addr v7, v6

    invoke-direct {v3, v5, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v3, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$LogInterpolator;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_4

    :cond_4
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    :goto_4
    iget v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    iput v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowScale:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public enterSoftware()V
    .locals 5

    const-string v0, "enterSoftware"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    iget v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->GLOW_MAX_SCALE_FACTOR:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v0, v2, v1

    const-string v0, "glowScale"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mInterpolator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$LogInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public exitHardware()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSpeedUpNextFade:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c2

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSpeedUpNextFade:Z

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v1, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public exitHoverAnim()V
    .locals 0

    return-void
.end method

.method public exitSoftware()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    const-string v0, "glowAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSpeedUpNextFade:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c2

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSpeedUpNextFade:Z

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mAnimatorListener:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple$1;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getExtendSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getGlowAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    return p0
.end method

.method public getGlowScale()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowScale:F

    return p0
.end method

.method public final getMaxGlowAlpha()F
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz p0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const p0, 0x3e4ccccd    # 0.2f

    :goto_0
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getRippleSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    return v0
.end method

.method public final hasFocusStateSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isHorizontal()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    const-string v0, "jumpToCurrentState"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    const v4, 0x10100a7

    if-ne v2, v4, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPressed:Z

    if-eq p1, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mDark:Z

    iget-boolean v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mLastDark:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->enterHardware()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->exitHardware()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->enterSoftware()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->exitSoftware()V

    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mPressed:Z

    return v3

    :cond_6
    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mDark:Z

    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGlowScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->mGlowScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->jumpToCurrentState()V

    :cond_0
    return p1
.end method

.method public startHoverAnim()V
    .locals 0

    return-void
.end method
