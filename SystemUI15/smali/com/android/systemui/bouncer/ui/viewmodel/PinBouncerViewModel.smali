.class public final Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;
.super Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authenticationMethod:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

.field public final backspaceButtonAppearance:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final confirmButtonAppearance:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final errorDialogMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hintedPinLength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDigitButtonAnimationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isLockedEsim:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSimAreaVisible:Z

.field public final isSimUnlockingDialogVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mutablePinInput:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final onIntentionalUserInput:Lkotlin/jvm/functions/Function0;

.field public final pinInput:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final pinShapes:Lcom/android/keyguard/PinShapeAdapter;

.field public final simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;",
            "Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;",
            ")V"
        }
    .end annotation

    const/4 p5, 0x0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p6, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;->simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;

    sget-object p4, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;

    invoke-virtual {p7, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    iget-object v0, p6, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->isLockedEsim:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p6, p6, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->errorDialogMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p6}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p6, Lcom/android/keyguard/PinShapeAdapter;

    invoke-direct {p6, p1}, Lcom/android/keyguard/PinShapeAdapter;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;->Companion:Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;

    new-instance p6, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p6, v0, v1, p5}, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    invoke-direct {p1, p6}, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;->mutablePinInput:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz p4, :cond_0

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p4, p5}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p4, p3, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->hintedPinLength:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    :goto_0
    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p6, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    invoke-static {p4, p2, v2, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p3, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->isAutoConfirmEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;

    invoke-direct {v2, p0, p5}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v3, p1, p4, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p6, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;->Hidden:Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;

    invoke-static {v3, p2, p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$special$$inlined$map$1;

    invoke-direct {p1, p4}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p6, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    invoke-static {p1, p2, p4, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p7, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;->authenticationMethod:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$1;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p5, p5, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$special$$inlined$map$2;

    iget-object p1, p3, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->isPinEnhancedPrivacyEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p0, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p6, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p2, p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getAuthenticationMethod()Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;->authenticationMethod:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    return-object p0
.end method
