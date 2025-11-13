.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final areNotificationsVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final clockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;

.field public final longPress:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;

.field public final shouldUseSplitNotificationShade:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final unfoldTranslations:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->clockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p6, p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$areNotificationsVisible$1;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$areNotificationsVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, p0, p2, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p0

    invoke-static {v1, p6, p0, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 p0, 0x1

    invoke-virtual {p7, p0}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->unfoldTranslationX(Z)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p7, p2}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->unfoldTranslationX(Z)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$unfoldTranslations$1;

    invoke-direct {p4, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$unfoldTranslations$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p5, p0, p2, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$UnfoldTranslations;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel$UnfoldTranslations;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p5, p6, p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static synthetic getClockSize$annotations()V
    .locals 0

    return-void
.end method
