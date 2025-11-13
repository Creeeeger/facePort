.class public Landroidx/core/animation/ValueAnimator;
.super Landroidx/core/animation/Animator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;


# instance fields
.field public mAnimationEndRequested:Z

.field public mDuration:J

.field public final mDurationScale:F

.field public mInitialized:Z

.field public mInterpolator:Landroidx/core/animation/Interpolator;

.field public mLastFrameTime:J

.field public mOverallFraction:F

.field public mPauseTime:J

.field public final mRepeatMode:I

.field public mReversing:Z

.field public mRunning:Z

.field public mSeekFraction:F

.field public mSelfPulse:Z

.field public mStartDelay:J

.field public mStartListenersCalled:Z

.field public mStartTime:J

.field public mStarted:Z

.field public mSuppressSelfPulseRequested:Z

.field public mValues:[Landroidx/core/animation/PropertyValuesHolder;

.field public mValuesMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroidx/core/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/core/animation/ValueAnimator;->sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/core/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    const/4 v3, 0x0

    iput v3, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    iput-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    const/4 v1, 0x1

    iput v1, p0, Landroidx/core/animation/ValueAnimator;->mRepeatMode:I

    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    sget-object v0, Landroidx/core/animation/ValueAnimator;->sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;

    iput-object v0, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    iput v2, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    return-void
.end method

.method public static clampFraction(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    int-to-float v0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0
.end method

.method public static varargs ofFloat([F)Landroidx/core/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroidx/core/animation/ValueAnimator;

    invoke-direct {v0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/core/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Landroidx/core/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroidx/core/animation/ValueAnimator;

    invoke-direct {v0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/core/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method


# virtual methods
.method public animateValue(F)V
    .locals 4

    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    invoke-interface {v0, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/core/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Animator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Landroidx/core/animation/Animator$AnimatorUpdateListener;->onAnimationUpdate(Landroidx/core/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final cancel()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->notifyStartListeners()V

    :cond_2
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationCancel(Landroidx/core/animation/Animator;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->endAnimation$1()V

    return-void

    :cond_4
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic clone()Landroidx/core/animation/Animator;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public clone()Landroidx/core/animation/ValueAnimator;
    .locals 6

    invoke-super {p0}, Landroidx/core/animation/Animator;->clone()Landroidx/core/animation/Animator;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-wide v2, v0, Landroidx/core/animation/ValueAnimator;->mPauseTime:J

    iput-wide v2, v0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    const/4 v2, 0x0

    iput v2, v0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v1, v0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    iget-object p0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    if-eqz p0, :cond_1

    array-length v2, p0

    new-array v3, v2, [Landroidx/core/animation/PropertyValuesHolder;

    iput-object v3, v0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object v3

    iget-object v4, v0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aput-object v3, v4, v1

    iget-object v4, v0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v5, v3, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final doAnimationFrame(J)Z
    .locals 11

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_0

    move-wide v5, p1

    goto :goto_1

    :cond_0
    iget-wide v5, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    long-to-float v0, v5

    iget v5, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    cmpl-float v6, v5, v4

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    mul-float/2addr v5, v0

    float-to-long v5, v5

    add-long/2addr v5, p1

    :goto_1
    iput-wide v5, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    :cond_2
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    if-nez v0, :cond_4

    iget-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    cmp-long v0, v8, p1

    if-lez v0, :cond_3

    iget v0, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    return v6

    :cond_3
    iput-boolean v5, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->startAnimation$1()V

    :cond_4
    iget-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    cmp-long v0, v8, v2

    if-gez v0, :cond_6

    iget v0, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v8, v0, v4

    if-ltz v8, :cond_6

    iget-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    long-to-float v8, v8

    iget v9, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    cmpl-float v10, v9, v4

    if-ltz v10, :cond_5

    goto :goto_2

    :cond_5
    move v9, v1

    :goto_2
    mul-float/2addr v9, v8

    float-to-long v8, v9

    long-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-long v8, v8

    sub-long v8, p1, v8

    iput-wide v8, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    iput v7, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    :cond_6
    iput-wide p1, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    iget-wide v7, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_e

    iget-wide v7, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v7

    iget v7, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    cmpl-float v4, v7, v4

    if-ltz v4, :cond_7

    goto :goto_3

    :cond_7
    move v7, v1

    :goto_3
    mul-float/2addr v7, v0

    float-to-long v7, v7

    cmp-long v0, v7, v2

    if-lez v0, :cond_8

    iget-wide v1, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v7

    div-float v1, p1, p2

    :cond_8
    iget p1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    float-to-int p2, v1

    float-to-int p1, p1

    if-le p2, p1, :cond_9

    move p1, v5

    goto :goto_4

    :cond_9
    move p1, v6

    :goto_4
    int-to-float p2, v5

    cmpl-float p2, v1, p2

    if-ltz p2, :cond_a

    move p2, v5

    goto :goto_5

    :cond_a
    move p2, v6

    :goto_5
    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    if-eqz p1, :cond_c

    if-nez p2, :cond_c

    iget-object p1, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v6

    :goto_6
    if-ge p2, p1, :cond_d

    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroidx/core/animation/Animator;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_d

    goto :goto_7

    :cond_d
    move v5, v6

    :goto_7
    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    iput p1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean p2, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    move v6, v5

    :cond_e
    if-eqz v6, :cond_f

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->endAnimation$1()V

    :cond_f
    return v6
.end method

.method public final end()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->startAnimation$1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation$1()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, v0, v1}, Landroidx/core/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->endAnimation$1()V

    return-void

    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final endAnimation$1()V
    .locals 6

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    move-result-object v0

    iget-object v2, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, v0, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->notifyStartListeners()V

    :cond_5
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    if-eqz v1, :cond_6

    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/Animator$AnimatorListener;

    iget-boolean v5, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v4, p0, v5}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/core/animation/Animator;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    return-void
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/core/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentIterationFraction(FZ)F
    .locals 5

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v0

    :cond_0
    double-to-int v0, v3

    int-to-float v1, v0

    sub-float/2addr p1, v1

    invoke-virtual {p0, v0, p2}, Landroidx/core/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    :cond_1
    return p1
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public final getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public final getTotalDuration()J
    .locals 6

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    const/4 p0, 0x1

    int-to-long v4, p0

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public initAnimation$1()V
    .locals 5

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    iget-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_0

    sget-object v3, Landroidx/core/animation/IntEvaluator;->sInstance:Landroidx/core/animation/IntEvaluator;

    goto :goto_1

    :cond_0
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_1

    sget-object v3, Landroidx/core/animation/FloatEvaluator;->sInstance:Landroidx/core/animation/FloatEvaluator;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    :cond_2
    iget-object v3, v2, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    if-eqz v3, :cond_3

    iget-object v2, v2, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v2, Landroidx/core/animation/KeyframeSet;

    iput-object v3, v2, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    :cond_5
    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    return p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    return p0
.end method

.method public final isStarted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    return p0
.end method

.method public final notifyStartListeners()V
    .locals 5

    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationStart(Landroidx/core/animation/Animator;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStartListenersCalled:Z

    return-void
.end method

.method public final pulseAnimationFrame(J)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result p0

    return p0
.end method

.method public final reverse()V
    .locals 8

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v6

    iget v6, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr v6, v0

    float-to-long v6, v6

    sub-long/2addr v6, v4

    sub-long/2addr v2, v6

    iput-wide v2, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->end()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    :goto_2
    return-void
.end method

.method public final setCurrentFraction(F)V
    .locals 4

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation$1()V

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    iget v1, p0, Landroidx/core/animation/ValueAnimator;->mDurationScale:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v1, v0

    float-to-long v0, v1

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    goto :goto_1

    :cond_1
    iput p1, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    :goto_1
    iput p1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0, p1, v0}, Landroidx/core/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroidx/core/animation/Animator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public setDuration(J)Landroidx/core/animation/ValueAnimator;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Animators cannot have negative duration: "

    invoke-static {v0, p1, p2}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    new-instance v0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    const-string v2, ""

    invoke-direct {v0, v2, p1}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    filled-new-array {v0}, [Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    new-instance v0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    const-string v2, ""

    invoke-direct {v0, v2, p1}, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    filled-new-array {v0}, [Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public final setInterpolator(Landroidx/core/animation/Interpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/core/animation/LinearInterpolator;

    invoke-direct {p1}, Landroidx/core/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public final setStartDelay(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "ValueAnimator"

    const-string p2, "Start delay should always be non-negative"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public final varargs setValues([Landroidx/core/animation/PropertyValuesHolder;)V
    .locals 6

    array-length v0, p1

    iput-object p1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v5, v3, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public final shouldPlayBackward(IZ)Z
    .locals 2

    if-lez p1, :cond_4

    iget p0, p0, Landroidx/core/animation/ValueAnimator;->mRepeatMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    return p0

    :cond_2
    rem-int/2addr p1, v0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    return p0

    :cond_4
    :goto_2
    return p2
.end method

.method public final skipToEndValue(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation$1()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public final start(Z)V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-boolean p1, p0, Landroidx/core/animation/ValueAnimator;->mReversing:Z

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    iget v3, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_0

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    int-to-float v4, v1

    sub-float/2addr v4, v3

    iput v4, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    :cond_0
    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    iput-boolean v1, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartTime:J

    iget-wide v3, p0, Landroidx/core/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->startAnimation$1()V

    iget p1, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, p1, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Landroidx/core/animation/ValueAnimator;->mDuration:J

    cmp-long p1, v0, v5

    if-lez p1, :cond_2

    long-to-float p1, v5

    long-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_4
    :goto_1
    iget-boolean p1, p0, Landroidx/core/animation/ValueAnimator;->mSelfPulse:Z

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0}, Landroidx/core/animation/Animator;->addAnimationCallback(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V

    :goto_2
    return-void

    :cond_6
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animators may only be run on Looper threads"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startAnimation$1()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mAnimationEndRequested:Z

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation$1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    iget v0, p0, Landroidx/core/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    iput v0, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/core/animation/ValueAnimator;->mOverallFraction:F

    :goto_0
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->notifyStartListeners()V

    :cond_1
    return-void
.end method

.method public final startWithoutPulsing(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->start()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/core/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n    "

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/core/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
