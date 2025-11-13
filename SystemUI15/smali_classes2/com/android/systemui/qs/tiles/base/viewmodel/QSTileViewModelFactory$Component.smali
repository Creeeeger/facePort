.class public final Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final customTileComponentBuilder:Lcom/android/systemui/qs/tiles/impl/custom/di/CustomTileComponent$Builder;

.field public final disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

.field public final qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

.field public final qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/qs/tiles/impl/custom/di/CustomTileComponent$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->customTileComponentBuilder:Lcom/android/systemui/qs/tiles/impl/custom/di/CustomTileComponent$Builder;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;)Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;
    .locals 14

    iget-object p1, p1, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;->spec:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->qsTileConfigProvider:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;

    check-cast v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->getConfig(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object v2

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;

    invoke-direct {p1, v2}, Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;-><init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->customTileComponentBuilder:Lcom/android/systemui/qs/tiles/impl/custom/di/CustomTileComponent$Builder;

    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentBuilder;->qSTileConfigModule:Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentBuilder;->build()Lcom/android/systemui/qs/tiles/impl/custom/di/CustomTileComponent;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    new-instance v3, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component$create$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component$create$1;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component$create$2;

    invoke-direct {v4, p1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component$create$2;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component$create$3;

    invoke-direct {v5, p1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component$create$3;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/qs/tiles/impl/custom/di/CustomTileComponent;->coroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Component;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;-><init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method
