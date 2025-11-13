.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$DurationScaleChangeListener;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$RepeatMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist INFINITE:I = -0x1

.field public static final whitelist RESTART:I = 0x1

.field public static final whitelist REVERSE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final blacklist TRACE_ANIMATION_FRACTION:Z

.field private static final greylist-max-o sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-p sDurationScale:F

.field private static final blacklist sDurationScaleChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator$DurationScaleChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnimationEndRequested:Z

.field private blacklist mAnimationHandler:Landroid/animation/AnimationHandler;

.field private greylist-max-o mCurrentFraction:F

.field private greylist mDuration:J

.field private greylist-max-o mDurationScale:F

.field private greylist-max-o mFirstFrameTime:J

.field greylist-max-o mInitialized:Z

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mLastFrameTime:J

.field private greylist-max-o mOverallFraction:F

.field private greylist-max-o mPauseTime:J

.field private greylist-max-o mRepeatCount:I

.field private greylist-max-o mRepeatMode:I

.field private greylist-max-o mResumed:Z

.field private greylist-max-o mReversing:Z

.field private greylist-max-o mRunning:Z

.field greylist-max-o mSeekFraction:F

.field private greylist-max-o mSelfPulse:Z

.field private greylist-max-o mStartDelay:J

.field greylist-max-o mStartTime:J

.field greylist-max-o mStartTimeCommitted:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mSuppressSelfPulseRequested:Z

.field greylist-max-o mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mValues:[Landroid/animation/PropertyValuesHolder;

.field greylist-max-o mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.debug.animator.trace_fraction"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    const/4 v4, 0x0

    iput v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    iput v2, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    return-void
.end method

.method private greylist-max-o addAnimationCallback(J)V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private greylist-max-o addOneShotCommitCallback()V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public static whitelist areAnimatorsEnabled()Z
    .locals 2

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o clampFraction(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private greylist-max-o endAnimation()V
    .locals 5

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->notifyEndListeners(Z)V

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public static greylist-max-o getCurrentAnimationsCount()I
    .locals 1

    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentIteration(F)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private greylist-max-o getCurrentIterationFraction(FZ)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v0

    int-to-float v1, v0

    sub-float v1, p1, v1

    invoke-direct {p0, v0, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    return v2
.end method

.method public static whitelist getDurationScale()F
    .locals 1

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static whitelist getFrameDelay()J
    .locals 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getScaledDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private greylist-max-o isPulsingInternal()Z
    .locals 4

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs whitelist ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs whitelist ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs whitelist ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs whitelist ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs whitelist ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static whitelist registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .locals 6

    const/4 v0, -0x1

    sget-object v1, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    sget-object v3, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1

    monitor-exit v1

    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v0, v4, :cond_3

    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :cond_3
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o removeAnimationCallback()V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method private greylist-max-o resolveDurationScale()F
    .locals 2

    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    goto :goto_0

    :cond_0
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    :goto_0
    return v0
.end method

.method public static greylist setDurationScale(F)V
    .locals 4

    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$DurationScaleChangeListener;->onChanged(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static whitelist setFrameDelay(J)V
    .locals 0

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    return-void
.end method

.method private greylist-max-o shouldPlayBackward(IZ)Z
    .locals 3

    if-lez p1, :cond_4

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :cond_2
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1

    :cond_4
    return p2
.end method

.method private greylist-max-o start(Z)V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v3, v3

    iget v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o startAnimation()V
    .locals 4

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_0

    :cond_1
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    :goto_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    return-void
.end method

.method public static whitelist unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .locals 5

    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method greylist-max-o animateBasedOnTime(J)Z
    .locals 12

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v5, p1, v5

    long-to-float v5, v5

    long-to-float v6, v1

    div-float/2addr v5, v6

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    iget v6, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    float-to-int v7, v5

    float-to-int v8, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-le v7, v8, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v10

    :goto_1
    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_2

    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    goto :goto_2

    :cond_2
    move v9, v10

    :goto_2
    move v8, v9

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    sget-object v3, Landroid/animation/Animator$AnimatorCaller;->ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v3, v10}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    goto :goto_3

    :cond_4
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_3
    invoke-direct {p0, v5}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v3

    iput v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->animateValue(F)V

    :cond_6
    return v0
.end method

.method blacklist animateSkipToEnds(JJ)V
    .locals 7

    cmp-long v0, p1, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_1

    cmp-long v5, p3, v3

    if-lez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    cmp-long v3, p1, v5

    if-ltz v3, :cond_2

    cmp-long v3, p3, v5

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyEndListeners(Z)V

    :cond_3
    return-void
.end method

.method greylist animateValue(F)V
    .locals 4

    sget-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gez v1, :cond_3

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    sget-object v2, Landroid/animation/Animator$AnimatorCaller;->ON_UPDATE:Landroid/animation/Animator$AnimatorCaller;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p0, v3}, Landroid/animation/ValueAnimator;->callOnList(Ljava/util/ArrayList;Landroid/animation/Animator$AnimatorCaller;Ljava/lang/Object;Z)V

    :cond_4
    return-void
.end method

.method blacklist animateValuesInRange(JJ)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-ltz v2, :cond_8

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v2

    cmp-long v4, p3, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    cmp-long v4, p3, v0

    if-nez v4, :cond_0

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v4, p3, v2

    if-gtz v4, :cond_1

    cmp-long v4, p3, v2

    if-nez v4, :cond_3

    cmp-long v4, p1, v2

    if-gez v4, :cond_3

    :cond_1
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    :cond_3
    :goto_1
    cmp-long v4, v2, v0

    if-ltz v4, :cond_4

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_4
    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long/2addr p3, v7

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long/2addr p1, v7

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v4, :cond_5

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v7, p1, v7

    long-to-int v4, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v7, p3, v7

    long-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-eq v4, v7, :cond_5

    sget-object v8, Landroid/animation/Animator$AnimatorCaller;->ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;

    invoke-virtual {p0, v8, v6}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    :cond_5
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_7

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr v4, v7

    cmp-long v4, p1, v4

    if-gtz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t animate a value outside of the duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    invoke-direct {p0, v0, v6}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should never be negative."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o canReverse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist cancel()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->notifyStartListeners(Z)V

    :cond_2
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    :cond_3
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void

    :cond_4
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/ValueAnimator;
    .locals 7

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    const/4 v2, 0x0

    iput v2, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iput v2, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_1

    array-length v2, v1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    iput-object v3, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v3

    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o commitAnimationFrame(J)V
    .locals 4

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_0
    return-void
.end method

.method public final greylist-max-o doAnimationFrame(J)Z
    .locals 8

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v0, p1

    :goto_0
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    return v1

    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_3
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/high16 v4, -0x40800000    # -1.0f

    if-nez v0, :cond_5

    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v0, v5, p1

    if-lez v0, :cond_4

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    :cond_5
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    cmp-long v0, v5, v2

    if-gez v0, :cond_7

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v2

    long-to-float v0, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    sub-long v5, p1, v2

    iput-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :cond_6
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    :cond_7
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    :cond_8
    return v2
.end method

.method public whitelist end()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    :cond_1
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void

    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAnimatedFraction()F
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public whitelist getAnimatedValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getCurrentPlayTime()J
    .locals 5

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    :cond_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1

    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method greylist-max-o getNameForTrace()Ljava/lang/String;
    .locals 1

    const-string v0, "animator"

    return-object v0
.end method

.method public whitelist getRepeatCount()I
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public whitelist getRepeatMode()I
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public whitelist getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .locals 6

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method greylist-max-o initAnimation()V
    .locals 3

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    :cond_1
    return-void
.end method

.method greylist-max-o isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public whitelist isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public whitelist isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public greylist-max-o overrideDurationScale(F)V
    .locals 0

    iput p1, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    return-void
.end method

.method public whitelist pause()V
    .locals 3

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    :cond_0
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public whitelist removeAllUpdateListeners()V
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public whitelist removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public whitelist resume()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reverse()V
    .locals 10

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, v2, v4

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v8, v2, v6

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->start(Z)V

    :goto_0
    return-void
.end method

.method public greylist-max-o setAllowRunningAsynchronously(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setAnimationHandler(Landroid/animation/AnimationHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-void
.end method

.method public whitelist setCurrentFraction(F)V
    .locals 6

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :goto_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .locals 4

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    long-to-float v0, p1

    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    return-void
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_0
    return-void
.end method

.method public varargs whitelist setFloatValues([F)V
    .locals 3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public varargs whitelist setIntValues([I)V
    .locals 3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    return-void
.end method

.method public varargs whitelist setObjectValues([Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .locals 0

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .locals 0

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public whitelist setStartDelay(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "ValueAnimator"

    const-string v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public varargs whitelist setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5

    array-length v0, p1

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method greylist-max-o skipToEndValue(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void
.end method

.method public whitelist start()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
