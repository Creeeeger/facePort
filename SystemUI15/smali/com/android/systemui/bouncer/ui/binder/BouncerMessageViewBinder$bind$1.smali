.class final Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

.field final synthetic $factory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field final synthetic $interactor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

.field final synthetic $view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/ui/BouncerMessageView;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/bouncer/ui/BouncerMessageView;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/systemui/log/BouncerLogger;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$factory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iput-object p3, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iput-object p4, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$interactor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    move-object v5, p3

    check-cast v5, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    iget-object v2, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$factory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v3, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iget-object v4, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$interactor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;-><init>(Lcom/android/systemui/bouncer/ui/BouncerMessageView;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    iget-object v3, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$factory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v4, v1, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->primaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    new-instance v5, Lcom/android/keyguard/KeyguardSecMessageAreaController;

    iget-object v6, v3, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v3, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v5, v4, v6, v7}, Lcom/android/keyguard/KeyguardSecMessageAreaController;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    iput-object v5, v1, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->primaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v5}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v4, v1, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->secondaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    new-instance v5, Lcom/android/keyguard/KeyguardSecMessageAreaController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v5, v4, v3, v7}, Lcom/android/keyguard/KeyguardSecMessageAreaController;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    iput-object v5, v1, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->secondaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v5}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    iget-object v1, v1, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->primaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    iget-object v1, v1, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->secondaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    :cond_3
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1$1;

    iget-object v4, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iget-object v5, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$interactor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    iget-object v6, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1$1;-><init>(Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/bouncer/ui/BouncerMessageView;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1;->label:I

    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
