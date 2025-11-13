.class public final Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/settings/ControlsSettingsRepository;


# instance fields
.field public final allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final canShowControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p4, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string p1, "lockscreen_show_controls"

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->makeFlowForSetting(Ljava/lang/String;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->canShowControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string p1, "lockscreen_allow_trivial_controls"

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->makeFlowForSetting(Ljava/lang/String;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final makeFlowForSetting(Ljava/lang/String;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0
.end method
