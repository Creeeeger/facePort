.class public Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;
.super Ljava/lang/Object;
.source "TouchEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cmfa/AuthTouch/TouchEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private blacklist mAltEstimator:Landroid/view/VelocityTracker$Estimator;

.field private blacklist mAltXVelocity:F

.field private blacklist mAltYVelocity:F

.field private blacklist mBoundingBottom:F

.field private blacklist mBoundingLeft:F

.field private blacklist mBoundingRight:F

.field private blacklist mBoundingTop:F

.field private blacklist mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private blacklist mCurDown:Z

.field private blacklist mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private blacklist mHasBoundingBox:Z

.field private blacklist mToolType:I

.field private blacklist mTraceCount:I

.field private blacklist mTraceCurrent:[Z

.field private blacklist mTraceX:[F

.field private blacklist mTraceY:[F

.field private blacklist mXVelocity:F

.field private blacklist mYVelocity:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAltEstimator(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mAltXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mAltYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingBottom(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingBottom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingLeft(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingLeft:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingRight(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingRight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingTop(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingTop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCoords(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 0

    iget-object p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurDown(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mCurDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEstimator(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasBoundingBox(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mHasBoundingBox:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolType(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)I
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mToolType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mAltXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mAltYVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingBottom(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingBottom:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingLeft(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingLeft:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingRight(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingRight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingTop(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mBoundingTop:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurDown(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mCurDown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasBoundingBox(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mHasBoundingBox:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToolType(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mToolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmXVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmYVelocity(Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mYVelocity:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceX:[F

    .line 366
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceY:[F

    .line 367
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCurrent:[Z

    .line 375
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 392
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    .line 393
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method


# virtual methods
.method public blacklist addTrace(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "current"    # Z

    .line 400
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceX:[F

    array-length v1, v0

    .line 401
    .local v1, "traceCapacity":I
    iget v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCount:I

    if-ne v2, v1, :cond_0

    .line 402
    mul-int/lit8 v1, v1, 0x2

    .line 403
    new-array v3, v1, [F

    .line 404
    .local v3, "newTraceX":[F
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iput-object v3, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceX:[F

    .line 407
    new-array v0, v1, [F

    .line 408
    .local v0, "newTraceY":[F
    iget-object v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceY:[F

    iget v5, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCount:I

    invoke-static {v2, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceY:[F

    .line 411
    new-array v2, v1, [Z

    .line 412
    .local v2, "newTraceCurrent":[Z
    iget-object v5, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCurrent:[Z

    iget v6, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCount:I

    invoke-static {v5, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iput-object v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCurrent:[Z

    .line 416
    .end local v0    # "newTraceY":[F
    .end local v2    # "newTraceCurrent":[Z
    .end local v3    # "newTraceX":[F
    :cond_0
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceX:[F

    iget v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCount:I

    aput p1, v0, v2

    .line 417
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceY:[F

    aput p2, v0, v2

    .line 418
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCurrent:[Z

    aput-boolean p3, v0, v2

    .line 419
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCount:I

    .line 420
    return-void
.end method

.method public blacklist clearTrace()V
    .locals 1

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/cmfa/AuthTouch/TouchEventView$PointerState;->mTraceCount:I

    .line 397
    return-void
.end method
