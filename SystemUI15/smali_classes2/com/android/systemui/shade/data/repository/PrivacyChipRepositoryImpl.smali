.class public final Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/data/repository/PrivacyChipRepository;


# instance fields
.field public final isLocationIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isMicCameraIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSafetyCenterEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

.field public final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final privacyItems:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/privacy/PrivacyConfig;Lcom/android/systemui/privacy/PrivacyItemController;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/safetycenter/SafetyCenterManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iput-object p3, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p6, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    const-string p2, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    sget-object p6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object p6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isSafetyCenterEnabled$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isSafetyCenterEnabled$2;-><init>(Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;)V

    const/16 v1, 0xc

    invoke-static {p5, p2, p6, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p5, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isSafetyCenterEnabled$3;

    const/4 p6, 0x0

    invoke-direct {p5, p0, p6}, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isSafetyCenterEnabled$3;-><init>(Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p5, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0, p4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p5, 0x3

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p4, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$privacyItems$1;

    invoke-direct {p4, p0, p6}, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$privacyItems$1;-><init>(Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p2, p1, p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->privacyItems:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1;

    invoke-direct {p2, p0, p6}, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isMicCameraIndicationEnabled$1;-><init>(Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iget-object p3, p3, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean p5, p3, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-static {p2, p1, p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->isMicCameraIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isLocationIndicationEnabled$1;

    invoke-direct {p2, p0, p6}, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl$isLocationIndicationEnabled$1;-><init>(Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iget-boolean p3, p3, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p1, p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/data/repository/PrivacyChipRepositoryImpl;->isLocationIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
