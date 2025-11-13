.class public final Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$listenForStartedKeyguardTransitionStep$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$listenForStartedKeyguardTransitionStep$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$listenForStartedKeyguardTransitionStep$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;

    iget-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->TAG:Ljava/lang/String;

    const-string v1, "listenForStartedKeyguardTransitionStep"

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    move v0, p2

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->lightRevealScrimRepository:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->willBeOrIsRevealed:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->willBeOrIsRevealed:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealAmountAnimator:Landroidx/core/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-boolean v1, p1, Landroidx/core/animation/ValueAnimator;->mRunning:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/core/animation/ValueAnimator;->reverse()V

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startRevealAmountAnimator, reveal"

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
