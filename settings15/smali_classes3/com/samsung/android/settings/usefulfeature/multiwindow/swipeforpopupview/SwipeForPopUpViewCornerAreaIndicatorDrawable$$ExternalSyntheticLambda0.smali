.class public final synthetic Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    return-void
.end method


# virtual methods
.method public final onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;

    long-to-float p1, p4

    iget p4, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mWidthChangePerMs:F

    mul-float/2addr p4, p1

    iget p5, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mHeightChangePerMs:F

    mul-float/2addr p1, p5

    const-wide/16 v0, 0xc8

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalWidth:F

    iget p3, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentWidth:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentWidth:F

    iget p3, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalWidth:F

    cmpg-float p3, p2, p3

    if-gez p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p4, p3

    add-float/2addr p4, p2

    iput p4, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentWidth:F

    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentHeight:F

    mul-float/2addr p3, p1

    add-float/2addr p3, p2

    iput p3, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentHeight:F

    goto :goto_2

    :cond_2
    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalWidth:F

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentWidth:F

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mFinalHeight:F

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mCurrentHeight:F

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/multiwindow/swipeforpopupview/SwipeForPopUpViewCornerAreaIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->end()V

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
