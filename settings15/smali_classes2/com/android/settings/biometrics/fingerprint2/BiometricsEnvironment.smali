.class public final Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# instance fields
.field public final accessibilityInteractor$delegate:Lkotlin/Lazy;

.field public final applicationScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public final debuggingInteractor$delegate:Lkotlin/Lazy;

.field public final debuggingRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;

.field public final displayDensityInteractor$delegate:Lkotlin/Lazy;

.field public final enrollStageInteractor$delegate:Lkotlin/Lazy;

.field public final fingerprintEnrollInteractor$delegate:Lkotlin/Lazy;

.field public final fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final fingerprintManagerInteractor$delegate:Lkotlin/Lazy;

.field public final fingerprintSensorRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;

.field public final foldStateInteractor$delegate:Lkotlin/Lazy;

.field public final gateKeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

.field public final orientationInteractor$delegate:Lkotlin/Lazy;

.field public final sensorInteractor$delegate:Lkotlin/Lazy;

.field public final touchEventInteractor$delegate:Lkotlin/Lazy;

.field public final udfpsDebugRepo:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

.field public final udfpsEnrollInteractor$delegate:Lkotlin/Lazy;

.field public final vibrationInteractor$delegate:Lkotlin/Lazy;

.field public final viewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsApplication;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "executorService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->backgroundDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v0, Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/JobSupport;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->applicationScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->gateKeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    const-string v2, "fingerprint"

    invoke-virtual {p1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintSensorRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->debuggingRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/DebuggingRepositoryImpl;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->udfpsDebugRepo:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintEnrollInteractor$2;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintEnrollInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintEnrollInteractor$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintManagerInteractor$2;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintManagerInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintManagerInteractor$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$accessibilityInteractor$2;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$accessibilityInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->accessibilityInteractor$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$foldStateInteractor$2;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$foldStateInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$orientationInteractor$2;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$orientationInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$vibrationInteractor$2;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$vibrationInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$displayDensityInteractor$2;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$displayDensityInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$debuggingInteractor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$debuggingInteractor$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$enrollStageInteractor$2;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$enrollStageInteractor$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$udfpsEnrollInteractor$2;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$udfpsEnrollInteractor$2;-><init>(Lcom/android/settings/SettingsApplication;Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$sensorInteractor$2;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$sensorInteractor$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$touchEventInteractor$2;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$touchEventInteractor$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {p1}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method


# virtual methods
.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object p0
.end method
