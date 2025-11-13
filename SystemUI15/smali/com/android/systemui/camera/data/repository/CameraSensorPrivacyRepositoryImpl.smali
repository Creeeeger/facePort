.class public final Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepository;


# instance fields
.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final privacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final userMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Landroid/hardware/SensorPrivacyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->privacyManager:Landroid/hardware/SensorPrivacyManager;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->userMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final isEnabled(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->userMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->privacyManager:Landroid/hardware/SensorPrivacyManager;

    sget-object v3, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v4, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryKt$isEnabled$1;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryKt$isEnabled$1;-><init>(Landroid/hardware/SensorPrivacyManager;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v3, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryKt$isEnabled$2;

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryKt$isEnabled$2;-><init>(Landroid/hardware/SensorPrivacyManager;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v3, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Lkotlinx/coroutines/flow/StateFlow;

    return-object v2
.end method
