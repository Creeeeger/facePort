.class public final Landroidx/core/animation/AnimatorSet;
.super Landroidx/core/animation/Animator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final EVENT_COMPARATOR:Landroidx/core/animation/AnimatorSet$3;


# instance fields
.field public mChildrenInitialized:Z

.field public mDelayAnim:Landroidx/core/animation/ValueAnimator;

.field public mDependencyDirty:Z

.field public mDuration:J

.field public mEvents:Ljava/util/ArrayList;

.field public mFirstFrame:J

.field public mInterpolator:Landroidx/core/animation/Interpolator;

.field public mLastEventId:I

.field public mLastFrameTime:J

.field public mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

.field public mNodeMap:Landroidx/collection/SimpleArrayMap;

.field public mNodes:Ljava/util/ArrayList;

.field public mPauseTime:J

.field public mPlayingSet:Ljava/util/ArrayList;

.field public mReversing:Z

.field public mRootNode:Landroidx/core/animation/AnimatorSet$Node;

.field public mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

.field public mSelfPulse:Z

.field public final mStartDelay:J

.field public mStarted:Z

.field public mTotalDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/animation/AnimatorSet$3;

    invoke-direct {v0}, Landroidx/core/animation/AnimatorSet$3;-><init>()V

    sput-object v0, Landroidx/core/animation/AnimatorSet;->EVENT_COMPARATOR:Landroidx/core/animation/AnimatorSet$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroidx/core/animation/Animator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    iput-object v3, p0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    new-instance v4, Landroidx/core/animation/AnimatorSet$Node;

    invoke-direct {v4, v3}, Landroidx/core/animation/AnimatorSet$Node;-><init>(Landroidx/core/animation/Animator;)V

    iput-object v4, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mTotalDuration:J

    iput-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    const/4 v1, -0x1

    iput v1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    new-instance v1, Landroidx/core/animation/AnimatorSet$SeekState;

    invoke-direct {v1, p0}, Landroidx/core/animation/AnimatorSet$SeekState;-><init>(Landroidx/core/animation/AnimatorSet;)V

    iput-object v1, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    iput-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    new-instance v0, Landroidx/core/animation/AnimatorSet$1;

    invoke-direct {v0, p0}, Landroidx/core/animation/AnimatorSet$1;-><init>(Landroidx/core/animation/AnimatorSet;)V

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static findSiblings(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/AnimatorSet$Node;

    invoke-static {v1, p1}, Landroidx/core/animation/AnimatorSet;->findSiblings(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isEmptySet(Landroidx/core/animation/AnimatorSet;)Z
    .locals 4

    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/Animator;

    instance-of v3, v2, Landroidx/core/animation/AnimatorSet;

    if-nez v3, :cond_1

    return v1

    :cond_1
    check-cast v2, Landroidx/core/animation/AnimatorSet;

    invoke-static {v2}, Landroidx/core/animation/AnimatorSet;->isEmptySet(Landroidx/core/animation/AnimatorSet;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V
    .locals 1

    iget-boolean v0, p2, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v0, :cond_0

    sget-object v0, Landroidx/core/animation/ValueAnimator;->sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;

    iget-object v0, p2, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    long-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroidx/core/animation/Animator;->pulseAnimationFrame(J)Z

    move-result p0

    iput-boolean p0, p2, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationCancel(Landroidx/core/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->endAnimation()V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/Animator;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->clone()Landroidx/core/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Landroidx/core/animation/AnimatorSet;
    .locals 11

    invoke-super {p0}, Landroidx/core/animation/Animator;->clone()Landroidx/core/animation/Animator;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet;

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Landroidx/core/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v3, v0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    const/4 v5, -0x1

    iput v5, v0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iput-wide v3, v0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    new-instance v3, Landroidx/core/animation/AnimatorSet$SeekState;

    invoke-direct {v3, p0}, Landroidx/core/animation/AnimatorSet$SeekState;-><init>(Landroidx/core/animation/AnimatorSet;)V

    iput-object v3, v0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v4, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v4}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v4, Landroidx/core/animation/AnimatorSet$2;

    invoke-direct {v4, p0, v0}, Landroidx/core/animation/AnimatorSet$2;-><init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/AnimatorSet;)V

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    iput-boolean v2, v0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    iput-boolean v3, v0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v5}, Landroidx/core/animation/AnimatorSet$Node;->clone()Landroidx/core/animation/AnimatorSet$Node;

    move-result-object v6

    iget-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v8, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    invoke-virtual {v7, v8}, Landroidx/core/animation/Animator;->removeListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    iget-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v5, v7, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    check-cast v4, Landroidx/core/animation/ValueAnimator;

    iput-object v4, v0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_8

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v7, v5, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/animation/AnimatorSet$Node;

    :goto_2
    iput-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v7, v5, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_3
    move v8, v2

    :goto_4
    if-ge v8, v7, :cond_3

    iget-object v9, v6, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v10, v5, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v9, v8, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    iget-object v7, v5, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    move v7, v2

    goto :goto_5

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_5
    move v8, v2

    :goto_6
    if-ge v8, v7, :cond_5

    iget-object v9, v6, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v10, v5, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v9, v8, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    iget-object v7, v5, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    move v7, v2

    goto :goto_7

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_7
    move v8, v2

    :goto_8
    if-ge v8, v7, :cond_7

    iget-object v9, v6, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v10, v5, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v9, v8, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->clone()Landroidx/core/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final createDependencyGraph()V
    .locals 12

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    iget-wide v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v2}, Landroidx/core/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    iput-boolean v1, v3, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_c

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iget-boolean v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v5, :cond_4

    goto/16 :goto_a

    :cond_4
    iput-boolean v3, v4, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    goto :goto_a

    :cond_5
    invoke-static {v4, v5}, Landroidx/core/animation/AnimatorSet;->findSiblings(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_8

    iget-object v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v7, v7, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v1

    :goto_5
    if-ge v9, v8, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v4, v10}, Landroidx/core/animation/AnimatorSet$Node;->addParent(Landroidx/core/animation/AnimatorSet$Node;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    move v6, v1

    :goto_7
    if-ge v6, v5, :cond_b

    iget-object v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v8, v4, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v1

    :goto_8
    if-ge v10, v9, :cond_a

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v7, v11}, Landroidx/core/animation/AnimatorSet$Node;->addParent(Landroidx/core/animation/AnimatorSet$Node;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    iput-boolean v3, v7, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_e

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    if-eq v4, v5, :cond_d

    iget-object v6, v4, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v6, :cond_d

    invoke-virtual {v4, v5}, Landroidx/core/animation/AnimatorSet$Node;->addParent(Landroidx/core/animation/AnimatorSet$Node;)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    iget-wide v4, v4, Landroidx/core/animation/ValueAnimator;->mDuration:J

    iput-wide v4, v2, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    invoke-virtual {p0, v2, v0}, Landroidx/core/animation/AnimatorSet;->updatePlayTime(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v3

    :goto_c
    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v6, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v6, v2, v1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v6, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v6, v2, v3}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v6, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v6, v2, v4}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    sget-object v2, Landroidx/core/animation/AnimatorSet;->EVENT_COMPARATOR:Landroidx/core/animation/AnimatorSet$3;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1a

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v6, v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v6, v4, :cond_19

    iget-object v5, v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-wide v6, v5, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v8, v5, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_10

    move v6, v3

    goto :goto_e

    :cond_10
    iget-object v10, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v10}, Landroidx/core/animation/Animator;->getStartDelay()J

    move-result-wide v10

    add-long/2addr v10, v6

    cmp-long v6, v8, v10

    if-nez v6, :cond_19

    move v6, v1

    :goto_e
    add-int/lit8 v7, v2, 0x1

    move v9, v0

    move v10, v9

    move v8, v7

    :goto_f
    if-ge v8, v0, :cond_14

    if-ge v9, v0, :cond_11

    if-ge v10, v0, :cond_11

    goto :goto_11

    :cond_11
    iget-object v11, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v11, v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    if-ne v11, v5, :cond_13

    iget-object v11, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v11, v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v11, :cond_12

    move v9, v8

    goto :goto_10

    :cond_12
    iget-object v11, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v11, v11, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v11, v3, :cond_13

    move v10, v8

    :cond_13
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_14
    :goto_11
    if-eqz v6, :cond_16

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v9, v5, :cond_15

    goto :goto_12

    :cond_15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_12
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v10, v5, :cond_18

    if-eqz v6, :cond_17

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v7

    :cond_17
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v2, v4

    goto/16 :goto_d

    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_1a
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_1b

    goto :goto_13

    :cond_1b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Sorting went bad, the start event should always be at index 0"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_13
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-direct {v2, v5, v1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-direct {v1, v2, v3}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-direct {v1, v2, v4}, Landroidx/core/animation/AnimatorSet$AnimationEvent;-><init>(Landroidx/core/animation/AnimatorSet$Node;I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eq v0, v3, :cond_1d

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v0}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mTotalDuration:J

    return-void

    :cond_1d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Something went wrong, the last event is not an end event"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doAnimationFrame(J)Z
    .locals 12

    const/4 v0, -0x1

    const/4 v1, 0x1

    sget-object v2, Landroidx/core/animation/ValueAnimator;->sDefaultInterpolator:Landroidx/core/animation/AccelerateDecelerateInterpolator;

    iget-wide v2, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iput-wide p1, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    :cond_0
    iget-wide v2, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    cmp-long v4, v2, v4

    const-wide/16 v5, -0x1

    if-lez v4, :cond_1

    iget-wide v7, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    sub-long v2, p1, v2

    add-long/2addr v2, v7

    iput-wide v2, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    iput-wide v5, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    :cond_1
    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iget-wide v3, v2, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v2, v3}, Landroidx/core/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    iget-boolean v2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iget-wide v8, v3, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    long-to-float v3, v8

    mul-float/2addr v3, v7

    float-to-long v8, v3

    sub-long v8, p1, v8

    iput-wide v8, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iget-wide v8, v3, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    iget-wide v10, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    add-long/2addr v8, v10

    long-to-float v3, v8

    mul-float/2addr v3, v7

    float-to-long v8, v3

    sub-long v8, p1, v8

    iput-wide v8, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    :goto_1
    xor-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2
    if-ltz v2, :cond_4

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    iput-boolean v4, v3, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    add-int/2addr v2, v0

    goto :goto_2

    :cond_4
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iput-wide v5, v2, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    iput-boolean v4, v2, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    :cond_5
    iget-boolean v2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    iget-wide v5, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    long-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-long v5, v5

    add-long/2addr v2, v5

    cmp-long v2, p1, v2

    if-gez v2, :cond_6

    return v4

    :cond_6
    iget-wide v2, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    float-to-long v2, v2

    iput-wide p1, p0, Landroidx/core/animation/AnimatorSet;->mLastFrameTime:J

    invoke-virtual {p0, v2, v3}, Landroidx/core/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result p1

    iget p2, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {p0, p2, p1, v2, v3}, Landroidx/core/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    iput p1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    move p1, v4

    :goto_3
    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_8

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/animation/AnimatorSet$Node;

    iget-boolean v5, p2, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v5, :cond_7

    invoke-virtual {p0, v2, v3, p2}, Landroidx/core/animation/AnimatorSet;->getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J

    move-result-wide v5

    invoke-static {v5, v6, p2}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    :cond_7
    add-int/2addr p1, v1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_4
    if-ltz p1, :cond_a

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/animation/AnimatorSet$Node;

    iget-boolean p2, p2, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/2addr p1, v0

    goto :goto_4

    :cond_a
    iget-boolean p1, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    if-ne p1, p2, :cond_b

    :goto_5
    move p1, v1

    goto :goto_6

    :cond_b
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    const/4 p2, 0x3

    if-ge p1, p2, :cond_c

    goto :goto_5

    :cond_c
    move p1, v4

    goto :goto_6

    :cond_d
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_c

    goto :goto_5

    :goto_6
    iget-object p2, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_e

    move p2, v4

    :goto_7
    iget-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_e

    iget-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Animator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Landroidx/core/animation/Animator$AnimatorUpdateListener;->onAnimationUpdate(Landroidx/core/animation/Animator;)V

    add-int/2addr p2, v1

    goto :goto_7

    :cond_e
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->endAnimation()V

    return v1

    :cond_f
    return v4
.end method

.method public final end()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v3, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v0, v1, :cond_3

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->reverse()V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_1

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->end()V

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_7

    iget v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v3, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_6

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->start()V

    goto :goto_1

    :cond_6
    if-ne v0, v1, :cond_4

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->end()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->endAnimation()V

    return-void

    :cond_9
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final endAnimation()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mFirstFrame:J

    const/4 v3, -0x1

    iput v3, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iput-wide v1, v3, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    iput-boolean v0, v3, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    move-result-object v1

    iget-object v3, v1, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, v1, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, v1, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/Animator$AnimatorListener;

    iget-boolean v6, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    invoke-interface {v5, p0, v6}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/core/animation/Animator;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v4}, Landroidx/core/animation/Animator;->removeListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    return-void
.end method

.method public final findLatestEventIdForTime(J)I
    .locals 8

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    iget-boolean v2, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    sub-long/2addr v2, p1

    iget p1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-ltz p1, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v3}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gtz v3, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method public final getChildAnimations()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_0

    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public final getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;
    .locals 2

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Landroidx/core/animation/AnimatorSet$Node;-><init>(Landroidx/core/animation/Animator;)V

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of p0, p1, Landroidx/core/animation/AnimatorSet;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/core/animation/AnimatorSet;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    :cond_0
    return-object v0
.end method

.method public final getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J
    .locals 2

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p0, p3, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr p0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p3, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    sub-long p0, p1, v0

    :goto_0
    return-wide p0
.end method

.method public final getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public final getTotalDuration()J
    .locals 2

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->createDependencyGraph()V

    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method public final handleAnimationEvents(IIJ)V
    .locals 9

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    sub-int/2addr p1, v5

    :goto_0
    if-lt p1, p2, :cond_8

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v6, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget v7, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v3, :cond_2

    iget-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v7}, Landroidx/core/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v7}, Landroidx/core/animation/Animator;->cancel()V

    :cond_1
    iput-boolean v4, v6, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v7, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v0, v5}, Landroidx/core/animation/Animator;->startWithoutPulsing(Z)V

    invoke-static {v1, v2, v6}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    goto :goto_1

    :cond_2
    if-ne v7, v5, :cond_3

    iget-boolean v0, v6, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p3, p4, v6}, Landroidx/core/animation/AnimatorSet;->getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J

    move-result-wide v7

    invoke-static {v7, v8, v6}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    add-int/2addr p1, v5

    :goto_2
    if-gt p1, p2, :cond_8

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v5, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget v0, v0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v0}, Landroidx/core/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v0}, Landroidx/core/animation/Animator;->cancel()V

    :cond_5
    iput-boolean v4, v5, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v0, v4}, Landroidx/core/animation/Animator;->startWithoutPulsing(Z)V

    invoke-static {v1, v2, v5}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_7

    iget-boolean v0, v5, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p3, p4, v5}, Landroidx/core/animation/AnimatorSet;->getPlayTimeForNode(JLandroidx/core/animation/AnimatorSet$Node;)J

    move-result-wide v6

    invoke-static {v6, v7, v5}, Landroidx/core/animation/AnimatorSet;->pulseFrame(JLandroidx/core/animation/AnimatorSet$Node;)V

    :cond_7
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public final initAnimation()V
    .locals 3

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->createDependencyGraph()V

    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v3}, Landroidx/core/animation/Animator;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    return v1
.end method

.method public final isRunning()Z
    .locals 4

    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mLastFrameTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStarted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    return p0
.end method

.method public final playTogether(Ljava/util/Collection;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Animator;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, v1}, Landroidx/core/animation/AnimatorSet$Builder;-><init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/core/animation/AnimatorSet$Builder;->this$0:Landroidx/core/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroidx/core/animation/AnimatorSet;->getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;

    move-result-object v1

    iget-object v2, v0, Landroidx/core/animation/AnimatorSet$Builder;->mCurrentNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v2, v1}, Landroidx/core/animation/AnimatorSet$Node;->addSibling(Landroidx/core/animation/AnimatorSet$Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final varargs playTogether([Landroidx/core/animation/Animator;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-instance v1, Landroidx/core/animation/AnimatorSet$Builder;

    invoke-direct {v1, p0, v0}, Landroidx/core/animation/AnimatorSet$Builder;-><init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V

    const/4 p0, 0x1

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    aget-object v0, p1, p0

    iget-object v2, v1, Landroidx/core/animation/AnimatorSet$Builder;->this$0:Landroidx/core/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroidx/core/animation/AnimatorSet;->getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;

    move-result-object v0

    iget-object v2, v1, Landroidx/core/animation/AnimatorSet$Builder;->mCurrentNode:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {v2, v0}, Landroidx/core/animation/AnimatorSet$Node;->addSibling(Landroidx/core/animation/AnimatorSet$Node;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final pulseAnimationFrame(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/core/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result p0

    return p0
.end method

.method public final reverse()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroidx/core/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public final setDuration(J)Landroidx/core/animation/Animator;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    iput-wide p1, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "duration must be a value of zero or greater"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setInterpolator(Landroidx/core/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/animation/AnimatorSet;->mInterpolator:Landroidx/core/animation/Interpolator;

    return-void
.end method

.method public final skipToEndValue(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Children must be initialized."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_5

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v1, v0}, Landroidx/core/animation/Animator;->skipToEndValue(Z)V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    move v0, p1

    :goto_2
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v1, p1}, Landroidx/core/animation/Animator;->skipToEndValue(Z)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final start()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/core/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public final start(ZZ)V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mStarted:Z

    iput-boolean p2, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mPauseTime:J

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_0

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$Node;

    iput-boolean v3, v5, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v4

    cmp-long p2, v4, v1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot reverse infinite AnimatorSet"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iput-boolean p1, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    invoke-static {p0}, Landroidx/core/animation/AnimatorSet;->isEmptySet(Landroidx/core/animation/AnimatorSet;)Z

    move-result p2

    if-nez p2, :cond_10

    move v4, v0

    :goto_2
    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mNoOpListener:Landroidx/core/animation/AnimatorListenerAdapter;

    invoke-virtual {v5, v6}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$SeekState;->this$0:Landroidx/core/animation/AnimatorSet;

    iget-boolean v6, v5, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v6

    iget-wide v8, v5, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v6, v8

    iget-wide v4, v4, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v6, v4

    goto :goto_3

    :cond_4
    iget-wide v6, v4, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v6, v6, v4

    if-nez v6, :cond_5

    iget-boolean v6, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iput-wide v1, v6, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    iput-boolean v3, v6, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    :cond_5
    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v6, v0

    invoke-virtual {p0, v6}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_5

    :cond_6
    iget-boolean v6, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_7

    iput-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mChildrenInitialized:Z

    invoke-virtual {p0, v3}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    :cond_7
    iget-boolean v6, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v6, v0

    invoke-virtual {p0, v6}, Landroidx/core/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_5

    :cond_8
    iget-object v6, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    :goto_4
    if-ltz v6, :cond_a

    iget-object v7, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget v7, v7, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v0, :cond_9

    iget-object v7, p0, Landroidx/core/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    iget-object v7, v7, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object v7, v7, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v7}, Landroidx/core/animation/Animator;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v0}, Landroidx/core/animation/Animator;->skipToEndValue(Z)V

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    iget-boolean v6, p0, Landroidx/core/animation/AnimatorSet;->mReversing:Z

    if-nez v6, :cond_b

    iget-wide v7, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    cmp-long v7, v7, v4

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iget-wide v7, v7, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    cmp-long v7, v7, v1

    if-eqz v7, :cond_f

    :cond_b
    iget-object v7, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iget-wide v8, v7, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    cmp-long v1, v8, v1

    if-eqz v1, :cond_c

    invoke-virtual {v7, v6}, Landroidx/core/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mSeekState:Landroidx/core/animation/AnimatorSet$SeekState;

    iget-wide v4, v1, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    :cond_c
    invoke-virtual {p0, v4, v5}, Landroidx/core/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, v4, v5}, Landroidx/core/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_6
    if-ltz v2, :cond_e

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$Node;

    iget-boolean v0, v0, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_e
    iput v1, p0, Landroidx/core/animation/AnimatorSet;->mLastEventId:I

    :cond_f
    iget-boolean v0, p0, Landroidx/core/animation/AnimatorSet;->mSelfPulse:Z

    if-eqz v0, :cond_10

    invoke-static {p0}, Landroidx/core/animation/Animator;->addAnimationCallback(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V

    :cond_10
    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_7
    if-ge v3, v1, :cond_11

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/Animator$AnimatorListener;

    invoke-interface {v2, p0, p1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationStart(Landroidx/core/animation/Animator;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet;->end()V

    :cond_12
    return-void

    :cond_13
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animators may only be run on Looper threads"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startWithoutPulsing(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimatorSet@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimatorSet$Node;

    const-string v4, "\n    "

    invoke-static {v0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v3, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "\n}"

    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAnimatorsDuration()V
    .locals 5

    iget-wide v0, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-wide v3, p0, Landroidx/core/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v2, v3, v4}, Landroidx/core/animation/Animator;->setDuration(J)Landroidx/core/animation/Animator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mDelayAnim:Landroidx/core/animation/ValueAnimator;

    iget-wide v1, p0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    return-void
.end method

.method public final updatePlayTime(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 10

    iget-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-nez v0, :cond_2

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    if-ne p1, p2, :cond_1

    :goto_0
    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Landroidx/core/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/animation/AnimatorSet$Node;

    iget-object p2, p0, Landroidx/core/animation/AnimatorSet;->mRootNode:Landroidx/core/animation/AnimatorSet$Node;

    if-eq p1, p2, :cond_0

    iput-wide v2, p1, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v2, p1, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_9

    iget-object v4, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v5}, Landroidx/core/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_3

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    iput-object v7, v6, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    iput-wide v2, v6, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/animation/AnimatorSet$Node;

    iput-wide v2, v6, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    iput-object v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cycle found in AnimatorSet: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AnimatorSet"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    iget-wide v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_8

    iget-wide v7, p1, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v9, v7, v2

    if-nez v9, :cond_5

    iput-object p1, v4, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v2, v4, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_4

    :cond_5
    cmp-long v5, v7, v5

    if-ltz v5, :cond_6

    iput-object p1, v4, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    iput-wide v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    :cond_6
    iget-wide v5, v4, Landroidx/core/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_7

    move-wide v7, v2

    goto :goto_3

    :cond_7
    iget-wide v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v7, v5

    :goto_3
    iput-wide v7, v4, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    :cond_8
    :goto_4
    invoke-virtual {p0, v4, p2}, Landroidx/core/animation/AnimatorSet;->updatePlayTime(Landroidx/core/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
