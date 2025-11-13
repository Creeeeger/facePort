.class public Lcom/samsung/vekit/Animation/AlphaAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "AlphaAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->ALPHA:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/vekit/Animation/AlphaAnimation;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist onAnimationCanceled(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->updateTargetValue(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationFinished(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->updateTargetValue(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationStarted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationUpdated(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->updateTargetValue(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist rollback()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/vekit/Animation/AlphaAnimation;->isEnableRollback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    iget-object v1, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->rollbackValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Element;->setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;

    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->enableRollback:Z

    return-void
.end method

.method public blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/vekit/Animation/AlphaAnimation;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/vekit/Animation/AlphaAnimation;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/AlphaAnimation;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStartTime(J)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/AlphaAnimation;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/AlphaAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/AlphaAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist updateTargetValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/vekit/Animation/AlphaAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    check-cast v1, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Item/Item;->setOpacity(F)Lcom/samsung/vekit/Item/Item;

    return-void
.end method
