.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;


# instance fields
.field public final _clockSize:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final clockEventController:Lcom/android/keyguard/ClockEventController;

.field public final clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

.field public final clockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentClockId:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$mapNotNull$1;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final previewClock:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/keyguard/ClockEventController;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlagsClassic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->clockEventController:Lcom/android/keyguard/ClockEventController;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    sget-object p3, Lcom/android/systemui/keyguard/shared/model/ClockSize;->LARGE:Lcom/android/systemui/keyguard/shared/model/ClockSize;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->clockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p3, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    const-string p4, "lockscreen_use_double_line_clock"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    const/4 p6, 0x0

    invoke-virtual {p3, p1, p6, p4}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$selectedClockSize$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$selectedClockSize$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p6, p3, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p1, p6, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p6, 0x3

    invoke-static {p3, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p7

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->getClockSize()Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;

    move-result-object v0

    invoke-static {p1, p5, p7, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$currentClockId$1;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$currentClockId$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$mapNotNull$1;

    invoke-direct {p4, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->currentClockId:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$mapNotNull$1;

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p1, p4, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;)V

    invoke-static {p3, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createCurrentClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object p2

    invoke-static {p1, p5, p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

    invoke-direct {p1, p4, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->previewClock:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

    return-void
.end method


# virtual methods
.method public final getClockSize()Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;
    .locals 5

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;->Companion:Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting$Companion;

    const/4 v1, 0x1

    const/4 v2, -0x2

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v3, "lockscreen_use_double_line_clock"

    invoke-interface {p0, v3, v1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;->values()[Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;->getSettingValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;->TAG:Ljava/lang/String;

    const-string v1, "Unrecognized clock setting value: "

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;->DYNAMIC:Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;

    :goto_1
    return-object v3
.end method
