.class final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lcom/android/systemui/util/ui/AnimatedValue;

    check-cast p5, Lcom/android/systemui/util/ui/AnimatedValue;

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->Z$0:Z

    iput-boolean p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->Z$1:Z

    iput-boolean p3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->Z$2:Z

    iput-object p4, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->L$0:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->label:I

    if-nez v0, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->Z$1:Z

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->Z$2:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/util/ui/AnimatedValue;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/util/ui/AnimatedValue;

    if-nez p1, :cond_10

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel$isNotifIconContainerVisible$2;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldShowAodIconsWhenShade()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_2
    instance-of p0, v2, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz p0, :cond_3

    move-object p1, v2

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p1}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of p1, v2, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p1, :cond_f

    move-object p1, v2

    check-cast p1, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {p1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    instance-of v0, v3, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz v0, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v4}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_4
    instance-of v4, v3, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz v4, :cond_e

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-virtual {v4}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;->getValue()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    if-eqz v4, :cond_7

    :cond_6
    move v5, v1

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_6

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p0, :cond_a

    if-eqz v0, :cond_8

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    new-instance v0, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;-><init>(Lcom/android/systemui/util/ui/AnimatedValue;Lcom/android/systemui/util/ui/AnimatedValue;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_8
    instance-of p0, v3, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p0, :cond_9

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    check-cast v2, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v2}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    instance-of p0, v2, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p0, :cond_d

    if-eqz v0, :cond_b

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    check-cast v3, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v3}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_b
    instance-of p0, v3, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    if-eqz p0, :cond_c

    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_10
    :goto_3
    new-instance p0, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ui/AnimatedValue$NotAnimating;-><init>(Ljava/lang/Object;)V

    :goto_4
    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
