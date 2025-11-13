.class public final Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepository;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p2, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->userMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final isCameraAutoRotateSettingEnabled(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->userMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const-string v4, "camera_autorotate"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl$isCameraAutoRotateSettingEnabled$lambda$1$$inlined$map$1;

    invoke-direct {v3, v2, p0, p1}, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl$isCameraAutoRotateSettingEnabled$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl$isCameraAutoRotateSettingEnabled$1$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl$isCameraAutoRotateSettingEnabled$1$2;-><init>(Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v2, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Lkotlinx/coroutines/flow/StateFlow;

    return-object v2
.end method
