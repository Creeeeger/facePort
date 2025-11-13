.class public Lcom/samsung/vekit/Animation/WipeAnimation;
.super Lcom/samsung/vekit/Animation/TransitionAnimation;
.source "WipeAnimation.java"


# instance fields
.field protected blacklist mWipeType:Lcom/samsung/vekit/Common/Type/WipeType;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/TransitionType;->WIPE:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/vekit/Animation/TransitionAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Lcom/samsung/vekit/Common/Type/TransitionType;)V

    sget-object v0, Lcom/samsung/vekit/Common/Type/WipeType;->RIGHT:Lcom/samsung/vekit/Common/Type/WipeType;

    iput-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->mWipeType:Lcom/samsung/vekit/Common/Type/WipeType;

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public blacklist getSecondTarget()Lcom/samsung/vekit/Item/Item;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public blacklist getTransitionType()Lcom/samsung/vekit/Common/Type/TransitionType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    return-object v0
.end method

.method public blacklist onAnimationCanceled(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationFinished(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationStarted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationStarted(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationUpdated(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationUpdated(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/WipeAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/WipeAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStartTime(J)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist setWipeType(Lcom/samsung/vekit/Common/Type/WipeType;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->mWipeType:Lcom/samsung/vekit/Common/Type/WipeType;

    return-object p0
.end method
