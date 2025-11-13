.class public Landroid/window/BackTouchTracker;
.super Ljava/lang/Object;
.source "BackTouchTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackTouchTracker$TouchTrackerState;
    }
.end annotation


# static fields
.field private static final blacklist LINEAR_DISTANCE:I

.field private static final blacklist PREDICTIVE_BACK_LINEAR_DISTANCE_PROP:Ljava/lang/String; = "persist.wm.debug.predictive_back_linear_distance"


# instance fields
.field private blacklist mInitTouchX:F

.field private blacklist mInitTouchY:F

.field private blacklist mLatestTouchX:F

.field private blacklist mLatestTouchY:F

.field private blacklist mLatestVelocityX:F

.field private blacklist mLatestVelocityY:F

.field private blacklist mLinearDistance:F

.field private blacklist mMaxDistance:F

.field private blacklist mNonLinearFactor:F

.field private blacklist mShouldUpdateStartLocation:Z

.field private blacklist mStartThresholdX:F

.field private blacklist mState:Landroid/window/BackTouchTracker$TouchTrackerState;

.field private blacklist mSwipeEdge:I

.field private blacklist mTriggerBack:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    nop

    const-string/jumbo v0, "persist.wm.debug.predictive_back_linear_distance"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    sget-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    iput-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    return-void
.end method


# virtual methods
.method public blacklist createProgressEvent()Landroid/window/BackMotionEvent;
    .locals 2

    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    invoke-virtual {p0, v0}, Landroid/window/BackTouchTracker;->getProgress(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/window/BackTouchTracker;->createProgressEvent(F)Landroid/window/BackMotionEvent;

    move-result-object v1

    return-object v1
.end method

.method public blacklist createProgressEvent(F)Landroid/window/BackMotionEvent;
    .locals 10

    new-instance v9, Landroid/window/BackMotionEvent;

    iget v1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iget v4, p0, Landroid/window/BackTouchTracker;->mLatestVelocityX:F

    iget v5, p0, Landroid/window/BackTouchTracker;->mLatestVelocityY:F

    iget-boolean v6, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    iget v7, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    const/4 v8, 0x0

    move-object v0, v9

    move v3, p1

    invoke-direct/range {v0 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFFFFZILandroid/view/RemoteAnimationTarget;)V

    return-object v9
.end method

.method public blacklist createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;
    .locals 10

    new-instance v9, Landroid/window/BackMotionEvent;

    iget v1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    iget-boolean v6, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    iget v7, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/window/BackMotionEvent;-><init>(FFFFFZILandroid/view/RemoteAnimationTarget;)V

    return-object v9
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BackTouchTracker state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mTriggerBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getLinearDistance()F
    .locals 1

    iget v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    return v0
.end method

.method public blacklist getMaxDistance()F
    .locals 1

    iget v0, p0, Landroid/window/BackTouchTracker;->mMaxDistance:F

    return v0
.end method

.method public blacklist getNonLinearFactor()F
    .locals 1

    iget v0, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    return v0
.end method

.method public blacklist getProgress(F)F
    .locals 14

    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    :goto_0
    iget v1, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-nez v1, :cond_1

    sub-float v1, p1, v0

    goto :goto_1

    :cond_1
    sub-float v1, v0, p1

    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    invoke-virtual {p0}, Landroid/window/BackTouchTracker;->getMaxDistance()F

    move-result v5

    cmpl-float v6, v5, v2

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    move v5, v6

    cmpg-float v6, v4, v5

    if-gez v6, :cond_5

    sub-float v6, v5, v4

    iget v8, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    mul-float/2addr v8, v6

    add-float/2addr v8, v4

    cmpg-float v9, v3, v4

    if-gtz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    div-float v10, v3, v8

    goto :goto_4

    :cond_4
    sub-float v10, v3, v4

    div-float v11, v10, v6

    invoke-static {v8, v5, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v12

    div-float v13, v3, v12

    move v10, v13

    :goto_4
    goto :goto_5

    :cond_5
    div-float v10, v3, v5

    :goto_5
    invoke-static {v10, v2, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    return v2
.end method

.method public blacklist getTriggerBack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    return v0
.end method

.method public blacklist isActive()Z
    .locals 2

    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isFinished()Z
    .locals 2

    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->FINISHED:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isInInitialState()Z
    .locals 2

    iget-object v0, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    iput-object v1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    iput v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    return-void
.end method

.method public blacklist setGestureStartLocation(FFI)V
    .locals 1

    iput p1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput p2, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    iput p1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput p2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iput p3, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    return-void
.end method

.method public blacklist setProgressThresholds(FFF)V
    .locals 1

    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    if-ltz v0, :cond_0

    sget v0, Landroid/window/BackTouchTracker;->LINEAR_DISTANCE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/window/BackTouchTracker;->mLinearDistance:F

    :goto_0
    iput p2, p0, Landroid/window/BackTouchTracker;->mMaxDistance:F

    iput p3, p0, Landroid/window/BackTouchTracker;->mNonLinearFactor:F

    return-void
.end method

.method public blacklist setShouldUpdateStartLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    return-void
.end method

.method public blacklist setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V
    .locals 0

    iput-object p1, p0, Landroid/window/BackTouchTracker;->mState:Landroid/window/BackTouchTracker$TouchTrackerState;

    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    :cond_0
    iput-boolean p1, p0, Landroid/window/BackTouchTracker;->mTriggerBack:Z

    return-void
.end method

.method public blacklist shouldUpdateStartLocation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    return v0
.end method

.method public blacklist update(FFFF)V
    .locals 3

    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-ne v0, v1, :cond_4

    :cond_1
    iput p1, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iget v2, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/window/BackTouchTracker;->mSwipeEdge:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iget v1, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    :cond_3
    iget v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    :cond_4
    iput p1, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput p2, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iput p3, p0, Landroid/window/BackTouchTracker;->mLatestVelocityX:F

    iput p4, p0, Landroid/window/BackTouchTracker;->mLatestVelocityY:F

    return-void
.end method

.method public blacklist updateStartLocation()V
    .locals 1

    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iget v0, p0, Landroid/window/BackTouchTracker;->mLatestTouchY:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mInitTouchY:F

    iget v0, p0, Landroid/window/BackTouchTracker;->mInitTouchX:F

    iput v0, p0, Landroid/window/BackTouchTracker;->mStartThresholdX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackTouchTracker;->mShouldUpdateStartLocation:Z

    return-void
.end method
