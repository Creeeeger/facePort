.class public final Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/data/repository/CommunalSettingsRepository;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final featureFlagsClassic:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final flagEnabled$delegate:Lkotlin/Lazy;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->featureFlagsClassic:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p3, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance p1, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$flagEnabled$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$flagEnabled$2;-><init>(Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->flagEnabled$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getAllowedByDevicePolicy(Landroid/content/pm/UserInfo;)Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getAllowedByDevicePolicy$$inlined$map$1;
    .locals 6

    new-instance v1, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v1, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getAllowedByDevicePolicy$$inlined$map$1;

    invoke-direct {v0, v2, p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getAllowedByDevicePolicy$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;Landroid/content/pm/UserInfo;)V

    return-object v0
.end method

.method public final getEnabledState(Landroid/content/pm/UserInfo;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_INVALID_USER:Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->box-impl(Ljava/util/EnumSet;)Lcom/android/systemui/communal/data/model/CommunalEnabledState;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->flagEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_FLAG:Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->box-impl(Ljava/util/EnumSet;)Lcom/android/systemui/communal/data/model/CommunalEnabledState;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "glanceable_hub_enabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledByUser$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledByUser$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v1, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledByUser$$inlined$map$1;

    invoke-direct {v0, v2, p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledByUser$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;Landroid/content/pm/UserInfo;)V

    sget-object v1, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_USER_SETTING:Lcom/android/systemui/communal/data/model/DisabledReason;

    new-instance v2, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryKt$mapToReason$$inlined$map$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryKt$mapToReason$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/communal/data/model/DisabledReason;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->getAllowedByDevicePolicy(Landroid/content/pm/UserInfo;)Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getAllowedByDevicePolicy$$inlined$map$1;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_DEVICE_POLICY:Lcom/android/systemui/communal/data/model/DisabledReason;

    new-instance v1, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryKt$mapToReason$$inlined$map$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryKt$mapToReason$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/communal/data/model/DisabledReason;)V

    filled-new-array {v2, v1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledState$$inlined$combine$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledState$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledState$$inlined$map$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledState$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledState$$inlined$map$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getEnabledState$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final getWidgetCategories(Landroid/content/pm/UserInfo;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "glanceable_hub_content_setting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getWidgetCategories$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getWidgetCategories$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v1, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getWidgetCategories$$inlined$map$1;

    invoke-direct {v0, v2, p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl$getWidgetCategories$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;Landroid/content/pm/UserInfo;)V

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalSettingsRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
