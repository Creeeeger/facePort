.class public final Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final coroutineScopeFactory:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileCoroutineScopeFactory;

.field public final disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

.field public final qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

.field public final qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileCoroutineScopeFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->coroutineScopeFactory:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileCoroutineScopeFactory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;)Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;
    .locals 14

    move-object v0, p0

    new-instance v13, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

    check-cast v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->getConfig(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$1;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$1;-><init>(Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;)V

    new-instance v3, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$2;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$2;-><init>(Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$3;

    move-object/from16 v5, p4

    invoke-direct {v4, v5}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$3;-><init>(Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;)V

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->coroutineScopeFactory:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileCoroutineScopeFactory;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileCoroutineScopeFactory;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v5}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v12

    iget-object v10, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v11, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v8, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

    iget-object v9, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;-><init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v13
.end method
