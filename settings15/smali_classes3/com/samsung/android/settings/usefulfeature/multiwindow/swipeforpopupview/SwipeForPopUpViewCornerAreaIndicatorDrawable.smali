.class public final Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCurrentHeight:F

.field public mCurrentWidth:F

.field public final mDrawLocation:I

.field public mFinalHeight:F

.field public mFinalWidth:F

.field public final mHandler:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;

.field public mHeightChangePerMs:F

.field public final mIndicatorColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mTimeAnimator:Landroid/animation/TimeAnimator;

.field public mWidthChangePerMs:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;-><init>(Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mHandler:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mDrawLocation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0606c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mIndicatorColor:I

    new-instance p1, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentHeight:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mDrawLocation:I

    const/16 v5, 0x14

    if-ne v1, v5, :cond_0

    sub-int/2addr v2, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSize()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalWidth:F

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

.method public final setSize(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mHandler:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mHandler:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
