.class public abstract Landroidx/core/animation/Animator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mListeners:Ljava/util/ArrayList;

.field public mPauseListeners:Ljava/util/ArrayList;

.field public mUpdateListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/core/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static addAnimationCallback(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 4

    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    move-result-object v0

    iget-object v1, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v1, :cond_0

    move-object v1, v2

    check-cast v1, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    iget-object v1, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/core/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/core/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public clone()Landroidx/core/animation/Animator;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Animator;

    iget-object v1, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Landroidx/core/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/core/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/Animator;->clone()Landroidx/core/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public abstract getDuration()J
.end method

.method public abstract getStartDelay()J
.end method

.method public getTotalDuration()J
    .locals 5

    invoke-virtual {p0}, Landroidx/core/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/Animator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public pulseAnimationFrame(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final removeListener(Landroidx/core/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public reverse()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Reverse is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setDuration(J)Landroidx/core/animation/Animator;
.end method

.method public abstract setInterpolator(Landroidx/core/animation/Interpolator;)V
.end method

.method public skipToEndValue(Z)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startWithoutPulsing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/core/animation/Animator;->reverse()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/animation/Animator;->start()V

    :goto_0
    return-void
.end method
