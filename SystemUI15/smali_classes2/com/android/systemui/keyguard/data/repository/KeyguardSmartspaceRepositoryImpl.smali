.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepository;


# instance fields
.field public final _bcSmartspaceVisibility:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final bcSmartspaceVisibility:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isWeatherEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserTracker;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl;->bcSmartspaceVisibility:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    const-string v0, "lockscreen_weather_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-virtual {p1, p2, v2, v1}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl$isWeatherEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl$isWeatherEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v1, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p1, v2, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl;)V

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p3

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p4, v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardSmartspaceRepositoryImpl;->isWeatherEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
