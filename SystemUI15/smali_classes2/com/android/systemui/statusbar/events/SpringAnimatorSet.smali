.class public final Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animationsRunning:I

.field public final animators:Ljava/util/List;

.field public final endListeners:Ljava/util/List;

.field public final nestedAnimationSets:Ljava/util/List;

.field public final springAnimations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animators:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->springAnimations:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->nestedAnimationSets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->endListeners:Ljava/util/List;

    return-void
.end method

.method public static final access$checkIfAllAnimationsEnded(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animationsRunning:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animationsRunning:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->notifyEndListeners()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAnimation(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Landroidx/core/animation/Animator;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animators:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->springAnimations:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->nestedAnimationSets:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Animator, SpringAnimation, or SpringAnimatorSet are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addListener(Landroidx/core/animation/AnimatorListenerAdapter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->endListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getTotalDuration()J
    .locals 2

    new-instance v0, Landroidx/core/animation/AnimatorSet;

    invoke-direct {v0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animators:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroidx/core/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final notifyEndListeners()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->endListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/Animator$AnimatorListener;

    new-instance v1, Landroidx/core/animation/AnimatorSet;

    invoke-direct {v1}, Landroidx/core/animation/AnimatorSet;-><init>()V

    invoke-interface {v0, v1}, Landroidx/core/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/core/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final playTogether(Ljava/util/Collection;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addAnimation(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs playTogether([Ljava/lang/Object;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addAnimation(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animators:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->springAnimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->nestedAnimationSets:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->notifyEndListeners()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animators:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->springAnimations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->nestedAnimationSets:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animationsRunning:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->animators:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Animator;

    new-instance v2, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$1;-><init>(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroidx/core/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->springAnimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v2, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$2;-><init>(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->nestedAnimationSets:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    new-instance v2, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$3;-><init>(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addListener(Landroidx/core/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->start()V

    goto :goto_2

    :cond_3
    return-void
.end method
