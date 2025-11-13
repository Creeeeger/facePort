.class public final Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bouncer/data/repository/SimBouncerRepository;


# instance fields
.field public _simPukInputModel:Lcom/android/systemui/bouncer/data/model/SimPukInputModel;

.field public final activeSubscriptionInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final errorDialogMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isLockedEsim:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPukScreenAvailable:Z

.field public final isSimPukLocked:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final simBouncerModel:Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$1;

.field public final simVerificationErrorMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final subscriptionId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final subscriptionManager:Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/res/Resources;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxy;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/telephony/euicc/EuiccManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->subscriptionManager:Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxy;

    const p2, 0x1110192

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->isPukScreenAvailable:Z

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p5, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$simBouncerModel$1;

    const/4 v0, 0x0

    invoke-direct {p5, p4, v0}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$simBouncerModel$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p5, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p5, p2, p0, p4}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    new-instance p2, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p2, p5}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {p4, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->subscriptionId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$3;

    invoke-direct {v2, p2, p0}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {v2, p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$4;

    invoke-direct {v3, v2, p7}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/telephony/euicc/EuiccManager;)V

    invoke-static {v3, p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p7

    iput-object p7, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->isLockedEsim:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p7, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$5;

    invoke-direct {p7, p5}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p7, p1, p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p5, "com.android.keyguard.disable_esim"

    invoke-direct {p2, p5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance p5, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$disableEsimErrorMessage$1;

    invoke-direct {p5, p3}, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl$disableEsimErrorMessage$1;-><init>(Landroid/content/res/Resources;)V

    const/16 p3, 0xe

    invoke-static {p6, p2, v0, p5, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    filled-new-array {p2, p3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p2

    invoke-static {p4, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bouncer/data/repository/SimBouncerRepositoryImpl;->errorDialogMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p0, Lcom/android/systemui/bouncer/data/model/SimPukInputModel;

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/bouncer/data/model/SimPukInputModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
