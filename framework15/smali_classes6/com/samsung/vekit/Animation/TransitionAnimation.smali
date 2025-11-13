.class public Lcom/samsung/vekit/Animation/TransitionAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "TransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field protected blacklist secondTarget:Lcom/samsung/vekit/Item/Item;

.field protected blacklist transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Lcom/samsung/vekit/Common/Type/TransitionType;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    iput-object p4, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    return-void
.end method

.method static synthetic blacklist lambda$checkValidItem$0(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Common/Type/ItemType;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->COLOR:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Item/Item;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Item/Item;->getParent()Lcom/samsung/vekit/Layer/Layer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v4

    sget-object v5, Lcom/samsung/vekit/Common/Type/LayerType;->MEDIA:Lcom/samsung/vekit/Common/Type/LayerType;

    if-ne v4, v5, :cond_0

    move v2, v3

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "isInvalidElement : please set correct Items to TransitionAnimation."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist getFirstTarget()Lcom/samsung/vekit/Common/Object/Element;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public blacklist getSecondTarget()Lcom/samsung/vekit/Item/Item;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public blacklist getTransitionType()Lcom/samsung/vekit/Common/Type/TransitionType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    return-object v0
.end method

.method public blacklist onAnimationCanceled(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationFinished(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationStarted(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationUpdated(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist setFirstTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setFirstTarget: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setSecondTarget: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public bridge synthetic blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public blacklist setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V

    invoke-virtual {p0, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    iput-object p2, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setTargets: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
