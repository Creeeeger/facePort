.class public final Lcom/android/systemui/biometrics/ui/viewmodel/DefaultUdfpsTouchOverlayViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;


# instance fields
.field public final shadeExpandedOrExpanding:Lkotlinx/coroutines/flow/StateFlow;

.field public final shouldHandleTouches:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManagerExtKt;->getHideAffordancesRequest(Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/DefaultUdfpsTouchOverlayViewModel$shouldHandleTouches$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/ui/viewmodel/DefaultUdfpsTouchOverlayViewModel$shouldHandleTouches$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/DefaultUdfpsTouchOverlayViewModel;->shouldHandleTouches:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method


# virtual methods
.method public final getShouldHandleTouches()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/DefaultUdfpsTouchOverlayViewModel;->shouldHandleTouches:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-object p0
.end method
