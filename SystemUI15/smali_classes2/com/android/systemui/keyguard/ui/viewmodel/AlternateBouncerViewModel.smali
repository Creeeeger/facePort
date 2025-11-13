.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alternateBouncerScrimAlpha:F

.field public final registerForDismissGestures:Lkotlinx/coroutines/flow/Flow;

.field public final scrimAlpha:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$2;

.field public final scrimColor:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final transitionToAlternateBouncerProgress:Lkotlinx/coroutines/flow/MutableSharedFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const p1, 0x3f28f5c3    # 0.66f

    iput p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->alternateBouncerScrimAlpha:F

    sget-object p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->transitionToAlternateBouncerProgress:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->scrimAlpha:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$2;

    const/high16 p2, -0x1000000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->scrimColor:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$3;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->registerForDismissGestures:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
