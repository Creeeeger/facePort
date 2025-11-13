.class public final Lcom/android/systemui/util/ui/AnimatedValueKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final flatMap(Lcom/android/systemui/util/ui/AnimatedValue;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/util/ui/AnimatedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+TA;>;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "TB;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue;

    instance-of v1, p1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/util/ui/AnimatedValueKt$flatMap$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/util/ui/AnimatedValueKt$flatMap$1;-><init>(Lcom/android/systemui/util/ui/AnimatedValue;Lcom/android/systemui/util/ui/AnimatedValue;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {p1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final flatten(Lcom/android/systemui/util/ui/AnimatedValue;)Lcom/android/systemui/util/ui/AnimatedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+TT;>;>;)",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/ui/AnimatedValue;

    instance-of v2, v1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v2}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/util/ui/AnimatedValueKt$flatMap$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/util/ui/AnimatedValueKt$flatMap$1;-><init>(Lcom/android/systemui/util/ui/AnimatedValue;Lcom/android/systemui/util/ui/AnimatedValue;)V

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    instance-of p0, v1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    check-cast v1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {v1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final getValue(Lcom/android/systemui/util/ui/AnimatedValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+TT;>;)TT;"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final isAnimating(Lcom/android/systemui/util/ui/AnimatedValue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+TT;>;)Z"
        }
    .end annotation

    instance-of p0, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    return p0
.end method

.method public static final map(Lcom/android/systemui/util/ui/AnimatedValue;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/util/ui/AnimatedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+TA;>;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "TB;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/util/ui/AnimatedValueKt$map$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/ui/AnimatedValueKt$map$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final stopAnimating(Lcom/android/systemui/util/ui/AnimatedValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final toAnimatedValueFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ui/AnimatedValueKt$toAnimatedValueFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    return-object p0
.end method

.method public static final zip(Lcom/android/systemui/util/ui/AnimatedValue;Lcom/android/systemui/util/ui/AnimatedValue;Lkotlin/jvm/functions/Function2;)Lcom/android/systemui/util/ui/AnimatedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+TA;>;",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "+TB;>;",
            "Lkotlin/jvm/functions/Function2;",
            ")",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "TZ;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v1, :cond_9

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {v1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    instance-of v2, p1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v2, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v3}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    instance-of v3, p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {v3}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-interface {p2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_4

    if-eqz v2, :cond_2

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    new-instance v1, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;-><init>(Lcom/android/systemui/util/ui/AnimatedValue;Lcom/android/systemui/util/ui/AnimatedValue;)V

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    instance-of p1, p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    instance-of p0, p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p0, :cond_7

    if-eqz v2, :cond_5

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_5
    instance-of p0, p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p0, :cond_6

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-direct {v0, p2}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;-><init>(Ljava/lang/Object;)V

    :goto_2
    return-object v0

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
