.class public final Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepository;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/user/data/repository/UserRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p2, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p3, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getSecureSettings$p(Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;)Lcom/android/systemui/util/settings/SecureSettings;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    return-object p0
.end method

.method public static final synthetic access$settingObserver(Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;Ljava/lang/String;ZI)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->settingObserver(Ljava/lang/String;ZI)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method private final settingObserver(Ljava/lang/String;ZI)Lkotlinx/coroutines/flow/Flow;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    iget-object v1, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v4, v1, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;

    move-object v3, v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$settingObserver$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;Ljava/lang/String;ZI)V

    return-object v0
.end method


# virtual methods
.method public boolSettingForActiveUser(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    new-instance v1, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$boolSettingForActiveUser$$inlined$flatMapLatest$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl$boolSettingForActiveUser$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
