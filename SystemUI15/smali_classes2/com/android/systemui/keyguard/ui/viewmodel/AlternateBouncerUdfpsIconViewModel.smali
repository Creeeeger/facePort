.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accessibilityDelegateHint:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final alpha:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$map$1;

.field public final bgAlpha:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final bgColor:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final context:Landroid/content/Context;

.field public final fgIconColor:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final fgIconPadding:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$special$$inlined$map$1;

.field public final fgViewModel:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final iconLocation:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isSupported:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryBackgroundViewModel;Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;->context:Landroid/content/Context;

    iget-object p1, p3, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p3, p7, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->transitionToAlternateBouncerProgress:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance p7, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$map$1;

    invoke-direct {p7, p3}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;->alpha:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$map$1;

    new-instance p3, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$flatMapLatest$1;

    const/4 p7, 0x0

    invoke-direct {p3, p7, p5}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;)V

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;->iconLocation:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    sget-object p1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;->ENTER:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p3, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;->accessibilityDelegateHint:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    iget-object p1, p2, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$map$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;)V

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$fgIconColor$2;

    invoke-direct {p1, p0, p7}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$fgIconColor$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p6, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->iconPadding:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor$special$$inlined$map$1;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$fgViewModel$1;

    invoke-direct {p2, p7}, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$fgViewModel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p5, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;->fgViewModel:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p1, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryBackgroundViewModel;->color:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;->bgColor:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;->bgAlpha:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    return-void
.end method
