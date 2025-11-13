.class public final Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final colorDisplayManagerUserScopedService:Lcom/android/systemui/user/utils/UserScopedService;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final isForceAutoModeAvailable:Lkotlinx/coroutines/flow/Flow;

.field public final locationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final nightDisplayListenerBuilder:Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final stateFlowUserMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;Lcom/android/systemui/user/utils/UserScopedService;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;",
            "Lcom/android/systemui/user/utils/UserScopedService;",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p4, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p5, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->nightDisplayListenerBuilder:Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;

    iput-object p6, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->colorDisplayManagerUserScopedService:Lcom/android/systemui/user/utils/UserScopedService;

    iput-object p7, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->stateFlowUserMap:Ljava/util/Map;

    sget-object p1, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    const-string p2, "night_display_forced_auto_mode_available"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/SettingsProxy;[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$isForceAutoModeAvailable$1;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$isForceAutoModeAvailable$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p3, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$special$$inlined$map$1;

    invoke-direct {p1, p3, p0}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->isForceAutoModeAvailable:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final initialState(Landroid/os/UserHandle;)Lcom/android/systemui/accessibility/data/model/NightDisplayState;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->colorDisplayManagerUserScopedService:Lcom/android/systemui/user/utils/UserScopedService;

    check-cast v0, Lcom/android/systemui/user/utils/UserScopedServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/user/utils/UserScopedServiceImpl;->forUser(Landroid/os/UserHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    new-instance v8, Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v1, "night_display_forced_auto_mode_available"

    invoke-interface {v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "night_display_auto_mode"

    const/4 v6, -0x1

    invoke-interface {v0, v1, v6, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v6, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled$1()Z

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;-><init>(IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZ)V

    return-object v8
.end method

.method public final nightDisplayState(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->stateFlowUserMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1;-><init>(Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const-string v4, "night_display_auto_mode"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$isDisplayAutoModeRawNotSet$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$isDisplayAutoModeRawNotSet$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v4, v3, v2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$isDisplayAutoModeRawNotSet$$inlined$map$1;

    invoke-direct {v3, v4, p0, p1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$isDisplayAutoModeRawNotSet$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;Landroid/os/UserHandle;)V

    :goto_0
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$shouldForceAutoMode$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$shouldForceAutoMode$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v5, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->isForceAutoModeAvailable:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v4, v5, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v2, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$lambda$2$$inlined$map$1;

    invoke-direct {v2, v4}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$lambda$2$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object v3, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-static {v3}, Lcom/android/systemui/util/kotlin/LocationControllerExtKt;->isLocationEnabledFlow(Lcom/android/systemui/statusbar/policy/LocationController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$lambda$2$$inlined$map$2;

    invoke-direct {v4, v3}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$lambda$2$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {v0, v2, v4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->initialState(Landroid/os/UserHandle;)Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;

    invoke-direct {v3, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;

    invoke-direct {v4, v2, v0, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 v0, -0x1

    invoke-static {v4, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$nightDisplayState$1$4;-><init>(Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    new-instance v10, Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;-><init>(IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, v0, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final setNightDisplayActivated(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$setNightDisplayActivated$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$setNightDisplayActivated$2;-><init>(Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;Landroid/os/UserHandle;ZLkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final setNightDisplayAutoMode(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$setNightDisplayAutoMode$2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$setNightDisplayAutoMode$2;-><init>(Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;Landroid/os/UserHandle;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
