.class public final Lcom/android/systemui/statusbar/ui/viewmodel/KeyguardStatusBarViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isBatteryCharging:Lkotlinx/coroutines/flow/Flow;

.field public final isKeyguardUserSwitcherEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/statusbar/domain/interactor/KeyguardStatusBarInteractor;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->statusBarState:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;->showHeadsUpStatusBar:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v0, Lcom/android/systemui/statusbar/ui/viewmodel/KeyguardStatusBarViewModel$isVisible$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/ui/viewmodel/KeyguardStatusBarViewModel$isVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p3, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDozing:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p3, p0, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p0, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p1, Lcom/android/systemui/statusbar/ui/viewmodel/KeyguardStatusBarViewModel$isBatteryCharging$1;

    invoke-direct {p1, p5, v1}, Lcom/android/systemui/statusbar/ui/viewmodel/KeyguardStatusBarViewModel$isBatteryCharging$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p4, Lcom/android/systemui/statusbar/domain/interactor/KeyguardStatusBarInteractor;->isKeyguardUserSwitcherEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method
