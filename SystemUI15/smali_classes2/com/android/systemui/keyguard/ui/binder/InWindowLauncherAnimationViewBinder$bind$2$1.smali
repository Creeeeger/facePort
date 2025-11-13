.class public final Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $inWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$2$1;->$inWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$2$1;->$inWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->$r8$clinit:I

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->preparedForUnlock:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->launcherAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x64

    const/4 v3, 0x1

    const-wide/16 v1, 0x279

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->playUnlockAnimation(JZJ)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->interactor:Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;->startedUnlockAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManagerKt;->TAG:Ljava/lang/String;

    const-string p2, "Attempted to call playUnlockAnimation() before prepareToUnlock()."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->preparedForUnlock:Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->interactor:Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;->startedUnlockAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
