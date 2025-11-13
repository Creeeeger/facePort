.class public final Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/android/systemui/util/kotlin/Sextuple;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;

    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    iget p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->I$1:I

    iget p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->I$0:I

    iget-object v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v4, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_6

    :pswitch_4
    iget-boolean p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$2:Z

    iget-boolean p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$1:Z

    iget-boolean v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$0:Z

    iget-object v4, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    iget-object v5, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v7, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode$Companion;

    iget-object v4, v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->mode:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->wakeAndUnlockModes:Ljava/util/Set;

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez v1, :cond_1

    move p2, v3

    :goto_2
    move-object v1, v5

    move-object v4, v7

    move v8, p1

    move p1, p0

    move p0, v8

    goto/16 :goto_5

    :cond_1
    move p2, v2

    goto :goto_2

    :pswitch_5
    iget-boolean p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$2:Z

    iget-boolean p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$1:Z

    iget-boolean v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$0:Z

    iget-object v4, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    iget-object v5, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object v7, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, p1

    move p1, p0

    move-object p0, v7

    move-object v7, p2

    move p2, v8

    goto :goto_3

    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Sextuple;->component2()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Sextuple;->component3()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Sextuple;->component4()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Sextuple;->component5()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Sextuple;->component6()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-object p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput-object v5, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$1:Ljava/lang/Object;

    iput-object v4, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$2:Ljava/lang/Object;

    iput-boolean v1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$0:Z

    iput-boolean p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$1:Z

    iput-boolean p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->Z$2:Z

    iput v3, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->label:I

    iget-object v7, p0, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    invoke-virtual {v7, v6}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->maybeHandleInsecurePowerGesture(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_2

    return-object v0

    :cond_2
    :goto_3
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    if-nez p2, :cond_3

    sget-object v7, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode$Companion;

    iget-object v4, v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->mode:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->wakeAndUnlockModes:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    move-object v4, p0

    move p0, p2

    move p2, v3

    :goto_4
    move-object v1, v5

    goto :goto_5

    :cond_3
    move-object v4, p0

    move p0, p2

    move p2, v2

    goto :goto_4

    :goto_5
    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    move p1, p2

    goto :goto_7

    :cond_4
    move p1, p2

    :goto_6
    move v2, v3

    :cond_5
    :goto_7
    const/4 p2, 0x0

    if-eqz v2, :cond_7

    iget-object v1, v4, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$2:Ljava/lang/Object;

    const/4 p0, 0x4

    iput p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->label:I

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->startTransitionTo$default(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    if-eqz p1, :cond_b

    iget-object p0, v1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p0, v2, :cond_8

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;->REVERSE:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    goto :goto_9

    :cond_8
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p0, p1, :cond_9

    sget-object p0, Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;->RESET:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    goto :goto_9

    :cond_9
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;->LAST_VALUE:Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;

    :goto_9
    iget-object v1, v4, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->label:I

    const-string v5, "listen for aod to awake"

    const/4 v7, 0x2

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->startTransitionTo$default(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    if-eqz p0, :cond_d

    iget-object v1, v4, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor;

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$0:Ljava/lang/Object;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->L$2:Ljava/lang/Object;

    const/4 p0, 0x6

    iput p0, v6, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2$emit$1;->label:I

    const-string/jumbo v5, "waking up and isOccluded=true"

    const/4 v7, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->startTransitionTo$default(Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;Lcom/android/systemui/keyguard/shared/model/KeyguardState;Landroid/animation/ValueAnimator;Lcom/android/systemui/keyguard/shared/model/TransitionModeOnCanceled;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    return-object v0

    :cond_c
    :goto_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/util/kotlin/Sextuple;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromAodTransitionInteractor$listenForAodToAwake$1$2;->emit(Lcom/android/systemui/util/kotlin/Sextuple;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
