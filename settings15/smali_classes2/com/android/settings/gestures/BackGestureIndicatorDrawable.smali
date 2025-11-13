.class public final Lcom/android/settings/gestures/BackGestureIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentWidth:F

.field public mFinalWidth:F

.field public final mHandler:Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mReversed:Z

.field public final mTimeAnimator:Landroid/animation/TimeAnimator;

.field public mWidthChangePerMs:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;-><init>(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mHandler:Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;

    iput-object p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mReversed:Z

    new-instance p1, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mReversed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWidth()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
