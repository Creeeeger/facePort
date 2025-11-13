.class public final Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final accessibilityDelegateHint:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final accessibilityInteractor:Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;

.field public final alphaMultiplierFromShadeExpansion:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final animatedBurnInOffsets:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final burnInOffsets:Lkotlinx/coroutines/flow/Flow;

.field public final deviceEntrySourceInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;

.field public final deviceEntryViewAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dozeAmount:Lkotlinx/coroutines/flow/MutableSharedFlow;

.field public final floatEvaluator:Landroid/animation/FloatEvaluator;

.field public final iconType:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final intEvaluator:Landroid/animation/IntEvaluator;

.field public final isInteractive:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isLongPressEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

.field public final isUnlocked:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final isVisible:Lkotlinx/coroutines/flow/Flow;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardViewController:Ldagger/Lazy;

.field public final nonAnimatedBurnInOffsets:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final qsProgress:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeExpansion:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final showingAlternateBouncer:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$map$1;

.field public final transitionAlpha:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final udfpsLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final useBackgroundProtection:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;Ldagger/Lazy;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/keyguard/ui/transitions/DeviceEntryIconTransition;",
            ">;",
            "Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;",
            "Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->keyguardViewController:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->deviceEntrySourceInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;

    iput-object p11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->accessibilityInteractor:Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;

    iput-object p12, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p6, p4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    iget-object p7, p4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->udfpsLocation:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    const/4 p8, 0x0

    invoke-static {p7, p12, p6, p8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->udfpsLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Landroid/animation/IntEvaluator;

    invoke-direct {p6}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->intEvaluator:Landroid/animation/IntEvaluator;

    new-instance p6, Landroid/animation/FloatEvaluator;

    invoke-direct {p6}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->floatEvaluator:Landroid/animation/FloatEvaluator;

    iget-object p6, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p7, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$map$1;

    invoke-direct {p7, p6}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->showingAlternateBouncer:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$map$1;

    move-object p6, p3

    check-cast p6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p6, p6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p6}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p7

    new-instance p9, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$qsProgress$1;

    invoke-direct {p9, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$qsProgress$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p10, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p10, p9, p7}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iput-object p10, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->qsProgress:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-interface {p6}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p6

    new-instance p7, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$shadeExpansion$1;

    invoke-direct {p7, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$shadeExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p9, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p9, p7, p6}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iput-object p9, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->shadeExpansion:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p6, Ljava/util/ArrayList;

    const/16 p7, 0xa

    invoke-static {p1, p7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p7

    invoke-direct {p6, p7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/android/systemui/keyguard/ui/transitions/DeviceEntryIconTransition;

    invoke-interface {p7}, Lcom/android/systemui/keyguard/ui/transitions/DeviceEntryIconTransition;->getDeviceEntryParentViewAlpha()Lkotlinx/coroutines/flow/Flow;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p6}, Lkotlinx/coroutines/flow/FlowKt;->merge(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    iget-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    sget-object p7, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p9, 0x3

    invoke-static {p7, p9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p10

    const/4 p11, 0x0

    invoke-static {p1, p6, p10, p11}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    new-instance p6, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$transitionAlpha$2;

    invoke-direct {p6, p0, p5, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$transitionAlpha$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p10, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p10, p6, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->showingAlternateBouncer:Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$map$1;

    iget-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->shadeExpansion:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    iget-object p11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->qsProgress:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    new-instance p12, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;

    invoke-direct {p12, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p6, p11, p12}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    new-instance p6, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$2;

    invoke-direct {p6, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$alphaMultiplierFromShadeExpansion$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p11, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p11, p6, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->deviceEntryIconXOffset:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$nonAnimatedBurnInOffsets$1;

    invoke-direct {p6, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$nonAnimatedBurnInOffsets$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p12, p2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->deviceEntryIconYOffset:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->udfpsProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, p12, p2, p6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->nonAnimatedBurnInOffsets:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    sget-object p2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p5, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p2

    new-instance p6, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;

    invoke-direct {p6, p0, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$animatedBurnInOffsets$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p12, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p12, p1, p2, p6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p12, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->animatedBurnInOffsets:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p1, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$deviceEntryViewAlpha$1;

    invoke-direct {p1, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$deviceEntryViewAlpha$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p2, p10, p11, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p7, p9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    const/4 p7, 0x0

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    invoke-static {p2, p1, p6, p7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->deviceEntryViewAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->useBackgroundProtection:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p2, p8, p5, p3, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;)V

    iget-object p3, p4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isUdfpsEnrolledAndEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-static {p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->burnInOffsets:Lkotlinx/coroutines/flow/Flow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$2;

    invoke-direct {p3, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$iconType$1;

    invoke-direct {p3, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$iconType$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p4, p4, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryUdfpsInteractor;->isListeningForUdfps:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-direct {p5, p4, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->iconType:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$map$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isVisible:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isUdfpsSupported:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$isInteractive$1;

    invoke-direct {p2, p8}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$isInteractive$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p3, p5, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->accessibilityInteractor:Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;

    iget-object p1, p1, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;->isEnabled:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$3;

    invoke-direct {p2, p8, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->accessibilityDelegateHint:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->isLongPressEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method


# virtual methods
.method public final onUserInteraction(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->keyguardViewController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;->deviceEntrySourceInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntrySourceInteractor;->attemptEnterDeviceFromDeviceEntryIcon:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method
