.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alpha:Lkotlinx/coroutines/flow/SafeFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDozingTransitionViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p2, p2, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;->enterFromTopAnimationAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance p5, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$5;

    const/4 v0, 0x0

    invoke-direct {p5, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$5;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, p5, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p2, p3, Lcom/android/systemui/keyguard/ui/viewmodel/GoneToDozingTransitionViewModel;->lockscreenAlpha:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$FlowBuilder$sharedFlow-74qcysc$$inlined$mapNotNull$1;

    new-instance p3, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$6;

    invoke-direct {p3, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$6;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p5, p3, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p2, p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->keyguardAlpha:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p3, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$7;

    invoke-direct {p3, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$7;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p4, p3, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;

    invoke-direct {p2, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel$alpha$8;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitions:Lkotlinx/coroutines/flow/Flow;

    filled-new-array {p1, v1, p5, p4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$4;

    invoke-direct {p3, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$4;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function6;)V

    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p1, p3}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodAlphaViewModel;->alpha:Lkotlinx/coroutines/flow/SafeFlow;

    return-void
.end method
