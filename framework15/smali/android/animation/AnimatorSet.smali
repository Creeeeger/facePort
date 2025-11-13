.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$SeekState;,
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$AnimationEvent;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private blacklist mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private blacklist mChildStartAndStopTimes:[J

.field private greylist-max-o mChildrenInitialized:Z

.field private greylist-max-o mDelayAnim:Landroid/animation/ValueAnimator;

.field private greylist-max-o mDependencyDirty:Z

.field private greylist-max-o mDuration:J

.field private final greylist-max-o mEndCanBeCalled:Z

.field private greylist-max-o mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstFrame:J

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mLastEventId:I

.field private greylist-max-o mLastFrameTime:J

.field private greylist-max-o mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPauseTime:J

.field private greylist-max-o mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReversing:Z

.field private greylist-max-o mRootNode:Landroid/animation/AnimatorSet$Node;

.field private greylist-max-o mSeekState:Landroid/animation/AnimatorSet$SeekState;

.field private greylist-max-o mSelfPulse:Z

.field private final greylist-max-o mShouldIgnoreEndWithoutStart:Z

.field private final greylist-max-o mShouldResetValuesAtStart:Z

.field private greylist-max-o mStartDelay:J

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mTotalDuration:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNodeMap(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReversing(Landroid/animation/AnimatorSet;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartDelay(Landroid/animation/AnimatorSet;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDependencyDirty(Landroid/animation/AnimatorSet;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNodeForAnimation(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 6

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {v3, v4}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v1, -0x1

    iput v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    new-instance v2, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v2, p0, v5}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState-IA;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    iput-wide v3, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    new-instance v2, Landroid/animation/AnimatorSet$1;

    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_1

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    :goto_0
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    goto :goto_3

    :cond_3
    :goto_2
    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    if-nez v3, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private greylist-max-o addAnimationCallback(J)V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private blacklist addAnimationEndListener()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o animateBasedOnPlayTime(JJZ)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_7

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    sub-long p1, v2, p1

    sub-long p3, v2, p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot reverse AnimatorSet with infinite duration"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->ensureChildStartAndEndTimes()[J

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, Landroid/animation/AnimatorSet;->findNextIndex(J[J)I

    move-result v1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/AnimatorSet;->findNextIndex(J[J)I

    move-result v2

    cmp-long v3, p1, p3

    if-ltz v3, :cond_3

    :goto_1
    if-ge v1, v2, :cond_5

    aget-wide v3, v0, v1

    cmp-long v5, p3, v3

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateSkipToEnds(JJ)V

    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateValuesInRange(JJ)V

    move-wide p3, v3

    :cond_2
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-le v1, v2, :cond_5

    add-int/lit8 v1, v1, -0x1

    aget-wide v3, v0, v1

    cmp-long v5, p3, v3

    if-eqz v5, :cond_4

    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateSkipToEnds(JJ)V

    invoke-virtual {p0, v3, v4, p3, p4}, Landroid/animation/AnimatorSet;->animateValuesInRange(JJ)V

    move-wide p3, v3

    :cond_4
    goto :goto_2

    :cond_5
    cmp-long v3, p1, p3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/animation/AnimatorSet;->animateSkipToEnds(JJ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/animation/AnimatorSet;->animateValuesInRange(JJ)V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should never be negative."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist callOnPlayingSet(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o createDependencyGraph()V
    .locals 8

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-wide v3, v3, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v2}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iput-boolean v0, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-boolean v4, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v4, :cond_4

    goto :goto_6

    :cond_4
    iput-boolean v2, v3, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_6

    iget-object v6, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iget-object v6, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_7

    iget-object v6, v3, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iget-object v7, v3, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    iput-boolean v2, v6, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_a

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_9

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v4, :cond_9

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v3, v0}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortAnimationEvents()V

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-void
.end method

.method private greylist-max-o endAnimation()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v3, -0x1

    iput v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->notifyEndListeners(Z)V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationEndListener()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return-void
.end method

.method private blacklist ensureChildStartAndEndTimes()[J
    .locals 3

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mChildStartAndStopTimes:[J

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/animation/AnimatorSet;->getStartAndEndTimes(Landroid/util/LongArray;J)V

    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    iput-object v1, p0, Landroid/animation/AnimatorSet;->mChildStartAndStopTimes:[J

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mChildStartAndStopTimes:[J

    return-object v0
.end method

.method private greylist-max-o findLatestEventIdForTime(J)I
    .locals 8

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    sub-long p1, v2, p1

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    :goto_0
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    goto :goto_3

    :cond_3
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, 0x1

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_4

    move v1, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v1
.end method

.method private blacklist findNextIndex(J[J)I
    .locals 2

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method private greylist-max-o findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o forceToEnd()V
    .locals 4

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/32 v0, 0x7fffffff

    :cond_2
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    :goto_0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    return-void
.end method

.method private greylist-max-o getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 2

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    new-instance v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private blacklist getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J
    .locals 2

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;Z)J
    .locals 2

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_0
    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private greylist-max-o handleAnimationEvents(IIJ)V
    .locals 10

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p1, v0

    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-lt v0, p2, :cond_4

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x1

    if-ne v7, v3, :cond_2

    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iput-boolean v4, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    invoke-direct {p0, v6, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_2

    :cond_2
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v8, :cond_3

    iget-boolean v7, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v7, :cond_3

    invoke-direct {p0, p3, p4, v6}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    goto :goto_5

    :cond_5
    add-int/lit8 v0, p1, 0x1

    :goto_3
    if-gt v0, p2, :cond_9

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v7, :cond_7

    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iput-boolean v4, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v7, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v7, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    invoke-direct {p0, v6, v1, v2}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_4

    :cond_7
    iget v7, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v7, v3, :cond_8

    iget-boolean v7, v6, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v7, :cond_8

    invoke-direct {p0, p3, p4, v6}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    return-void
.end method

.method private greylist-max-o initAnimation()V
    .locals 4

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    return-void
.end method

.method private greylist-max-o initChildren()V
    .locals 1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    :cond_0
    return-void
.end method

.method private static greylist-max-o isEmptySet(Landroid/animation/AnimatorSet;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    instance-of v3, v2, Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    return v1

    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-static {v3}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o printChildCount()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Current tree: "

    const-string v2, "AnimatorSet"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    const/4 v6, 0x0

    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_2
    iget-object v8, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v8, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v9, v5, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private greylist-max-o pulseFrame(Landroid/animation/AnimatorSet$Node;J)V
    .locals 4

    iget-boolean v0, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    long-to-float v2, p2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->pulseAnimationFrame(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    :cond_1
    return-void
.end method

.method private greylist-max-o removeAnimationCallback()V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method private blacklist removeAnimationEndListener()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o sortAnimationEvents()V
    .locals 12

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v6, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v6, v1, v2}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v5, v1, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v4, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-direct {v4, v1, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v1, Landroid/animation/AnimatorSet$3;

    invoke-direct {v1, p0}, Landroid/animation/AnimatorSet$3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_c

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v6, v3, :cond_b

    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v8, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v10, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v10, v10, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    const/4 v6, 0x0

    :goto_2
    move v7, v0

    move v8, v0

    add-int/lit8 v9, v1, 0x1

    :goto_3
    if-ge v9, v0, :cond_5

    if-ge v7, v0, :cond_2

    if-ge v8, v0, :cond_2

    goto :goto_5

    :cond_2
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v11, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v10, :cond_3

    move v7, v9

    goto :goto_4

    :cond_3
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v10, v10, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v10, v4, :cond_4

    move v8, v9

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-eqz v6, :cond_7

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v7, v9, :cond_6

    goto :goto_6

    :cond_6
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_6
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_9

    if-eqz v6, :cond_8

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_8
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    nop

    add-int/2addr v1, v3

    goto :goto_7

    :cond_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    :goto_7
    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sorting went bad, the start event should always be at index 0"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_8
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v5, v6, v2}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v2, v5, v4}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {v2, v5, v3}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eq v1, v4, :cond_f

    return-void

    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Something went wrong, the last event is not an end event"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o start(ZZ)V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-boolean p2, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iput-boolean v0, v3, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot reverse infinite AnimatorSet"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-static {p0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->startAnimation()V

    :cond_4
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    return-void

    :cond_6
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o startAnimation()V
    .locals 6

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->addAnimationEndListener()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->getPlayTimeNormalized()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    :cond_0
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v4, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v2, :cond_5

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v0

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x0

    :goto_2
    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v2

    const/4 v4, -0x1

    invoke-direct {p0, v4, v2, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_3
    if-ltz v4, :cond_8

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-boolean v3, v3, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_8
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    :cond_9
    return-void
.end method

.method private greylist-max-o updateAnimatorsDuration()V
    .locals 6

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private greylist-max-o updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_0

    iput-wide v1, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v1, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_9

    iget-object v4, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-object v5, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_3

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-object v8, v7, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-wide v1, v7, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iput-wide v1, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-object v8, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cycle found in AnimatorSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AnimatorSet"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v1

    if-eqz v6, :cond_8

    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_5

    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v1, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_4

    :cond_5
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-wide v8, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    iput-object p1, v4, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    :cond_6
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_7

    move-wide v6, v1

    goto :goto_3

    :cond_7
    iget-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v8, v4, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    add-long/2addr v6, v8

    :goto_3
    iput-wide v6, v4, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :cond_8
    :goto_4
    invoke-direct {p0, v4, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method blacklist animateSkipToEnds(JJ)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    cmp-long v1, p3, p1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    if-lez v1, :cond_4

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    iget-object v1, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    :goto_0
    const-wide/16 v7, 0x0

    if-ltz v1, :cond_3

    iget-object v9, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v10, v9, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v11, v9, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    iget-wide v11, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v11, v11, v4

    if-eqz v11, :cond_2

    iget-object v11, v10, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v12, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v14, v10, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v14, v14, v4

    if-nez v14, :cond_0

    const-wide v14, 0x7fffffffffffffffL

    goto :goto_1

    :cond_0
    iget-wide v14, v10, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :goto_1
    cmp-long v16, p1, v12

    if-gtz v16, :cond_1

    cmp-long v16, v12, p3

    if-gez v16, :cond_1

    iget-wide v2, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {v11, v7, v8, v2, v3}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    iget-object v2, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    cmp-long v2, v12, p1

    if-gtz v2, :cond_2

    cmp-long v2, p1, v14

    if-gtz v2, :cond_2

    iget-wide v2, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v2, p1, v2

    iget-wide v7, v10, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v7, p3, v7

    invoke-virtual {v11, v2, v3, v7, v8}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    iget-object v2, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    cmp-long v1, p1, v7

    if-gtz v1, :cond_9

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->notifyEndListeners(Z)V

    goto/16 :goto_6

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    iget-object v2, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    iget-object v7, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v8, v7, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v9, v7, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v9, v6, :cond_7

    iget-wide v9, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v9, v9, v4

    if-eqz v9, :cond_7

    iget-object v9, v8, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v12, v8, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v12, v12, v4

    if-nez v12, :cond_5

    const-wide v12, 0x7fffffffffffffffL

    goto :goto_4

    :cond_5
    iget-wide v12, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :goto_4
    cmp-long v14, p3, v12

    if-gez v14, :cond_6

    cmp-long v14, v12, p1

    if-gtz v14, :cond_6

    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v14, v12, v14

    iget-wide v4, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v4, p3, v4

    invoke-virtual {v9, v14, v15, v4, v5}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    iget-object v4, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    cmp-long v4, v10, p1

    if-gtz v4, :cond_7

    cmp-long v4, p1, v12

    if-gtz v4, :cond_7

    iget-wide v4, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v4, p1, v4

    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v14, p3, v14

    invoke-virtual {v9, v4, v5, v14, v15}, Landroid/animation/Animator;->animateSkipToEnds(JJ)V

    iget-object v4, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, -0x1

    goto :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->notifyEndListeners(Z)V

    :cond_9
    :goto_6
    return-void
.end method

.method blacklist animateValuesInRange(JJ)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    const/4 v4, 0x1

    if-ltz v3, :cond_2

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-ltz v1, :cond_3

    cmp-long v1, p3, v5

    if-gtz v1, :cond_1

    cmp-long v1, p3, v5

    if-nez v1, :cond_3

    cmp-long v1, p1, v5

    if-gez v1, :cond_3

    :cond_1
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->notifyStartListeners(Z)V

    :cond_3
    :goto_1
    iget-object v1, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_a

    iget-object v3, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v6, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v6, v4, :cond_9

    iget-wide v6, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    iget-object v6, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v10, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v12, v5, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v7, v12, v8

    if-nez v7, :cond_4

    const-wide v12, 0x7fffffffffffffffL

    goto :goto_3

    :cond_4
    iget-wide v12, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :goto_3
    cmp-long v7, v10, p1

    if-gez v7, :cond_5

    cmp-long v7, p1, v12

    if-ltz v7, :cond_7

    :cond_5
    cmp-long v7, v10, p1

    if-nez v7, :cond_6

    cmp-long v7, p3, v10

    if-ltz v7, :cond_7

    :cond_6
    cmp-long v7, v12, p1

    if-nez v7, :cond_8

    cmp-long v7, p3, v12

    if-lez v7, :cond_8

    :cond_7
    iget-wide v14, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v14, p1, v14

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v7, p3, v8

    move-object/from16 v16, v5

    const-wide/16 v4, -0x1

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v6, v14, v15, v4, v5}, Landroid/animation/Animator;->animateValuesInRange(JJ)V

    goto :goto_4

    :cond_8
    move-object/from16 v16, v5

    goto :goto_4

    :cond_9
    move-object/from16 v16, v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method public greylist-max-o canReverse()Z
    .locals 4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist cancel()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStartListenersCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->notifyListeners(Landroid/animation/Animator$AnimatorCaller;Z)V

    new-instance v0, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Landroid/animation/AnimatorSet;->callOnPlayingSet(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/AnimatorSet;
    .locals 12

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v5, -0x1

    iput v5, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    iput-wide v3, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    new-instance v3, Landroid/animation/AnimatorSet$SeekState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState-IA;)V

    iput-object v3, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mStartListenersCalled:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v5, Landroid/animation/AnimatorSet$2;

    invoke-direct {v5, p0, v0}, Landroid/animation/AnimatorSet$2;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean v2, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    iput-boolean v3, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v7

    iget-object v8, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v9, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v5, Landroid/animation/ValueAnimator;

    iput-object v5, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_8

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v8, :cond_1

    move-object v8, v4

    goto :goto_2

    :cond_1
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    :goto_2
    iput-object v8, v7, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    move v8, v2

    goto :goto_3

    :cond_2
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_3

    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v9, :cond_4

    move v9, v2

    goto :goto_5

    :cond_4
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_5
    move v8, v9

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_5

    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_6

    move v9, v2

    goto :goto_7

    :cond_6
    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_7
    move v8, v9

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_7

    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v10, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o commitAnimationFrame(J)V
    .locals 0

    return-void
.end method

.method public greylist-max-o doAnimationFrame(J)Z
    .locals 11

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->forceToEnd()V

    return v2

    :cond_0
    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    :cond_1
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    return v3

    :cond_2
    iget-wide v7, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_3

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    :cond_3
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_4

    long-to-float v1, p1

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    goto :goto_0

    :cond_4
    long-to-float v1, p1

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    add-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v1, v4

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    :cond_5
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v1, :cond_6

    long-to-float v1, p1

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    long-to-float v4, v4

    iget-wide v5, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    long-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    return v3

    :cond_6
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long v4, p1, v4

    long-to-float v1, v4

    div-float/2addr v1, v0

    float-to-long v4, v1

    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v1

    iget v6, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-direct {p0, v6, v1, v4, v5}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    iput v1, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v9, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v9, :cond_7

    invoke-direct {p0, v4, v5, v8}, Landroid/animation/AnimatorSet;->getPlayTimeForNodeIncludingDelay(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v9

    invoke-direct {p0, v8, v9, v10}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_2
    if-ltz v7, :cond_a

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v8, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    iget-boolean v8, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v2, :cond_b

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v9, :cond_b

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    iget v8, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_e

    const/4 v7, 0x1

    goto :goto_4

    :cond_c
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v8, v9, :cond_d

    move v8, v2

    goto :goto_3

    :cond_d
    move v8, v3

    :goto_3
    move v7, v8

    :cond_e
    :goto_4
    if-eqz v7, :cond_f

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    return v2

    :cond_f
    return v3
.end method

.method public whitelist end()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    :goto_0
    iput v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_5

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v4, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-boolean v5, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget v5, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v1, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->reverse()V

    goto :goto_2

    :cond_3
    iget v5, v3, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v2, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    goto :goto_5

    :cond_6
    iget v0, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/2addr v0, v2

    :goto_3
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    iget v4, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v4, :cond_8

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_4

    :cond_8
    iget v4, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v4, v1, :cond_9

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    return-void

    :cond_b
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getChangingConfigurations()I
    .locals 4

    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist getChildAnimations()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v3, v4, :cond_0

    iget-object v4, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public whitelist getCurrentPlayTime()J
    .locals 5

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    move v0, v1

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1

    :cond_3
    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1
.end method

.method public whitelist getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method blacklist getStartAndEndTimes(Landroid/util/LongArray;J)V
    .locals 7

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v3, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v4, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v4, v4, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/animation/Animator;->getStartAndEndTimes(Landroid/util/LongArray;J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .locals 2

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method greylist-max-o isInitialized()Z
    .locals 3

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    return v1
.end method

.method public whitelist isRunning()Z
    .locals 4

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public whitelist pause()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    new-instance v1, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v1}, Landroid/animation/AnimatorSet;->callOnPlayingSet(Ljava/util/function/Consumer;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public varargs whitelist playSequentially([Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist playTogether(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs whitelist playTogether([Landroid/animation/Animator;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public whitelist resume()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-nez v1, :cond_1

    iget-wide v1, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-direct {p0, v3, v4}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/animation/AnimatorSet$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v1}, Landroid/animation/AnimatorSet;->callOnPlayingSet(Ljava/util/function/Consumer;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reverse()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .locals 11

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Cannot seek in reverse in an infinite AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v9

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Something went wrong. mReversing should not be set when AnimatorSet is not started."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v2, v0, v1, v3}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    :cond_6
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    iget-boolean v8, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, v9

    invoke-direct/range {v3 .. v8}, Landroid/animation/AnimatorSet;->animateBasedOnPlayTime(JJZ)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should always be in between 0 and duration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/AnimatorSet;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public whitelist setStartDelay(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string v2, "AnimatorSet"

    const-string v3, "Start delay should always be non-negative"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    :cond_0
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v4, -0x1

    if-ge v1, v0, :cond_5

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iget-object v7, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v6, v7, :cond_2

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_3

    :cond_2
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_3

    move-wide v7, v4

    goto :goto_1

    :cond_3
    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v7, v2

    :goto_1
    iput-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v7, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-long/2addr v4, v2

    :goto_2
    iput-wide v4, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_6

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    :cond_6
    return-void
.end method

.method public whitelist setTarget(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public whitelist setupEndValues()V
    .locals 4

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v3, :cond_0

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist setupStartValues()V
    .locals 4

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v3, :cond_0

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public greylist-max-o shouldPlayTogether()Z
    .locals 3

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method greylist-max-o skipToEndValue(Z)V
    .locals 4

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public whitelist start()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatorSet@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
