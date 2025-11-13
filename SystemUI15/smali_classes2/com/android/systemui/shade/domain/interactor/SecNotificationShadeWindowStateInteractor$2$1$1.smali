.class final Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field synthetic L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Triple;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->I$1:I

    iget v4, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->I$0:I

    iget-boolean v5, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->Z$0:Z

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    move v5, v1

    move v1, p1

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    sget v6, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    if-eq v4, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz v1, :cond_e

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    if-nez v1, :cond_5

    :cond_4
    if-nez v5, :cond_e

    if-nez v1, :cond_e

    :cond_5
    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->Z$0:Z

    iput v4, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->I$0:I

    iput v1, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->I$1:I

    iput v3, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->label:I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1$1;->this$0:Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;

    sget v6, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    if-eqz v4, :cond_9

    if-eq v4, v3, :cond_8

    if-eq v4, v2, :cond_7

    move-object v8, v7

    goto :goto_3

    :cond_7
    const-string v8, "SHADE_LOCKED"

    goto :goto_3

    :cond_8
    const-string v8, "KEYGUARD"

    goto :goto_3

    :cond_9
    const-string v8, "SHADE"

    :goto_3
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " : shadeOrQsExpanded: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c

    const/4 v8, 0x4

    if-eq v1, v8, :cond_b

    const/16 v8, 0x8

    if-eq v1, v8, :cond_a

    goto :goto_4

    :cond_a
    const-string v7, "GONE"

    goto :goto_4

    :cond_b
    const-string v7, "INVISIBLE"

    goto :goto_4

    :cond_c
    const-string v7, "VISIBLE"

    :goto_4
    const-string v8, " => "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;

    iget-object p1, p1, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowState;

    if-eqz p1, :cond_d

    const-string v7, "\n\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bouncerShowing: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ", headsUpNotificationShowing: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ", keyguardFadingAway: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ", keyguardGoingAway: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ", lightRevealScrimOpaque: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", qsExpanded: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "SecNotificationShadeWindowStateInteractor"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
