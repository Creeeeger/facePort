.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final aodToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;

.field public final burnInInteractor:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

.field public final configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

.field public final goneToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;

.field public final keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final occludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->burnInInteractor:Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->goneToAodTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/GoneToAodTransitionViewModel;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->aodToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AodToLockscreenTransitionViewModel;

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->occludedToLockscreenTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludedToLockscreenTransitionViewModel;

    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    const-string p1, "AodBurnInViewModel"

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final movement(Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    iget v0, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->minViewY:I

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->topInset:I

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "minViewY is below topInset: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;->copy$default(Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;IILkotlin/jvm/functions/Function0;I)Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    const v2, 0x7f0704a5

    invoke-virtual {v0, v2}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->dimensionPixelSize(I)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel$movement$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AodBurnInViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;)V

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
