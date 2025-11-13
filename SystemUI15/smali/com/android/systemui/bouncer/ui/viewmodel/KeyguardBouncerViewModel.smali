.class public final Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bouncerExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bouncerShowMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final interactor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public final isInflated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isInteractable:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$3;

.field public final isShowing:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final keyguardPosition:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final startDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final startingToHide:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$2;

.field public final updateResources:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$filter$3;

.field public final view:Lcom/android/systemui/bouncer/ui/BouncerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/ui/BouncerView;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->view:Lcom/android/systemui/bouncer/ui/BouncerView;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->interactor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->bouncerExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isInteractable:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$3;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->isInteractable:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$3;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel$isShowing$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel$isShowing$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerUpdating:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->isShowing:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->startingToHide:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$2;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->startingToHide:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$2;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->startingDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->startDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->keyguardPosition:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->keyguardPosition:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->resourceUpdateRequests:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$filter$3;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->updateResources:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor$special$$inlined$filter$3;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->showMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->bouncerShowMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->keyguardAuthenticatedBiometrics:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object p1, p2, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isInflated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->isInflated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final setBouncerViewDelegate(Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->view:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast v0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->_delegate:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;->interactor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-boolean p1, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->pendingBouncerViewDelegate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->pendingBouncerViewDelegate:Z

    :cond_0
    return-void
.end method
