.class public Lcom/samsung/vekit/Animation/ScaleAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "ScaleAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Lcom/samsung/vekit/Common/Object/Vector3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->SCALE:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onAnimationCanceled(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/ScaleAnimation;->updateTargetValue(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationFinished(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/ScaleAnimation;->updateTargetValue(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationStarted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationUpdated(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/ScaleAnimation;->updateTargetValue(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist rollback()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/vekit/Animation/ScaleAnimation;->isEnableRollback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Element;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->rollbackValue:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Panel/Panel;->setScale(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->enableRollback:Z

    return-void
.end method

.method public bridge synthetic blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/ScaleAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/ScaleAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/ScaleAnimation;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/ScaleAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/ScaleAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/ScaleAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/ScaleAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/Vector3;",
            ">;)",
            "Lcom/samsung/vekit/Animation/ScaleAnimation;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/ScaleAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/ScaleAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/ScaleAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/ScaleAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/Vector3;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/ScaleAnimation;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/ScaleAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/ScaleAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/ScaleAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStartTime(J)Lcom/samsung/vekit/Animation/ScaleAnimation;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/ScaleAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/ScaleAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/ScaleAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/ScaleAnimation;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/ScaleAnimation;

    return-object v0
.end method

.method public blacklist updateTargetValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, [F

    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([F)V

    iget-object v2, p0, Lcom/samsung/vekit/Animation/ScaleAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Element;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/vekit/Panel/Panel;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;

    return-void
.end method
