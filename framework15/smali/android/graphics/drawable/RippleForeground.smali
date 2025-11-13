.class Landroid/graphics/drawable/RippleForeground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleForeground.java"


# static fields
.field private static final greylist-max-o DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final greylist-max-o LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final greylist-max-o OPACITY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o OPACITY_ENTER_DURATION:I = 0x4b

.field private static final greylist-max-o OPACITY_EXIT_DURATION:I = 0x96

.field private static final greylist-max-o OPACITY_HOLD_DURATION:I = 0xe1

.field private static final greylist-max-o RIPPLE_ENTER_DURATION:I = 0xe1

.field private static final greylist-max-o RIPPLE_ORIGIN_DURATION:I = 0xe1

.field private static final greylist-max-o TWEEN_ORIGIN:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TWEEN_RADIUS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private greylist-max-o mClampedStartingX:F

.field private greylist-max-o mClampedStartingY:F

.field private greylist-max-o mEnterStartedAtMillis:J

.field private final greylist-max-o mForceSoftware:Z

.field private greylist-max-o mHasFinishedExit:Z

.field private greylist-max-o mOpacity:F

.field private greylist-max-o mPendingHwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/animation/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRunningHwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/animation/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRunningSwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStartRadius:F

.field private greylist-max-o mStartingX:F

.field private greylist-max-o mStartingY:F

.field private greylist-max-o mTargetX:F

.field private greylist-max-o mTargetY:F

.field private greylist-max-o mTweenRadius:F

.field private greylist-max-o mTweenX:F

.field private greylist-max-o mTweenY:F

.field private greylist-max-o mUsingProperties:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOpacity(Landroid/graphics/drawable/RippleForeground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningHwAnimators(Landroid/graphics/drawable/RippleForeground;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTweenRadius(Landroid/graphics/drawable/RippleForeground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTweenX(Landroid/graphics/drawable/RippleForeground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasFinishedExit(Landroid/graphics/drawable/RippleForeground;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOpacity(Landroid/graphics/drawable/RippleForeground;F)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTweenRadius(Landroid/graphics/drawable/RippleForeground;F)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTweenX(Landroid/graphics/drawable/RippleForeground;F)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTweenY(Landroid/graphics/drawable/RippleForeground;F)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHwProps(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clearHwProps()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAnimationPropertyChanged(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->onAnimationPropertyChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpruneHwFinished(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneHwFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpruneSwFinished(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneSwFinished()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/graphics/drawable/RippleForeground$2;

    const-string/jumbo v1, "tweenRadius"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    new-instance v0, Landroid/graphics/drawable/RippleForeground$3;

    const-string/jumbo v1, "tweenOrigin"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    new-instance v0, Landroid/graphics/drawable/RippleForeground$4;

    const-string/jumbo v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    new-instance v0, Landroid/graphics/drawable/RippleForeground$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleForeground$1;-><init>(Landroid/graphics/drawable/RippleForeground;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean p5, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    iput p3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput p4, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    return-void
.end method

.method private greylist-max-o clampStartingPosition()V
    .locals 11

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    sub-float/2addr v2, v0

    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    sub-float/2addr v3, v1

    iget v4, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    sub-float/2addr v4, v5

    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    mul-float v6, v4, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    float-to-double v5, v3

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v0

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v1

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput v5, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    iput v5, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    :goto_0
    return-void
.end method

.method private greylist-max-o clearHwProps()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    return-void
.end method

.method private greylist-max-o computeFadeOutDelay()J
    .locals 7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/drawable/RippleForeground;->mEnterStartedAtMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0xe1

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    sub-long/2addr v4, v0

    return-wide v4

    :cond_0
    return-wide v2
.end method

.method private blacklist drawHardware(Landroid/graphics/RecordingCanvas;Landroid/graphics/Paint;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleForeground;->startPending(Landroid/graphics/RecordingCanvas;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneHwFinished()V

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private greylist-max-o drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v2

    if-lez v1, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v3

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v4

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o getCurrentRadius()F
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentX()F
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentY()F
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private greylist-max-o onAnimationPropertyChanged()V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private greylist-max-o pruneHwFinished()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o pruneSwFinished()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o startHardwareEnter()V
    .locals 8

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    const-wide/16 v2, 0xe1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v4, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v5, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget v6, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v6, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v5, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v2, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-direct {v2, v3, v7, v6}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    const-wide/16 v6, 0x4b

    invoke-virtual {v2, v6, v7}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v3, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setStartValue(F)V

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    return-void
.end method

.method private greylist-max-o startHardwareExit()V
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v1, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeFadeOutDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setStartDelay(J)V

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->setStartValue(F)V

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist startPending(Landroid/graphics/RecordingCanvas;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->start()V

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private greylist-max-o startSoftwareEnter()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xe1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v2, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    new-array v7, v1, [F

    aput v4, v7, v3

    invoke-static {p0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v5, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    aput v4, v1, v3

    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x4b

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o startSoftwareExit()V
    .locals 4

    sget-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeFadeOutDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o switchToUiThreadAnimation()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clearHwProps()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public greylist-max-o draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneSwFinished()V

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/RippleForeground;->drawHardware(Landroid/graphics/RecordingCanvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public greylist-max-o end()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final greylist-max-o enter()V
    .locals 2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/RippleForeground;->mEnterStartedAtMillis:J

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startSoftwareEnter()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startHardwareEnter()V

    return-void
.end method

.method public final greylist-max-o exit()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startSoftwareExit()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startHardwareExit()V

    return-void
.end method

.method public greylist-max-o getBounds(Landroid/graphics/Rect;)V
    .locals 7

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public greylist-max-o hasFinishedExit()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return v0
.end method

.method public greylist-max-o move(FF)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput p2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    return-void
.end method

.method protected greylist-max-o onTargetRadiusChanged(F)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->switchToUiThreadAnimation()V

    return-void
.end method
