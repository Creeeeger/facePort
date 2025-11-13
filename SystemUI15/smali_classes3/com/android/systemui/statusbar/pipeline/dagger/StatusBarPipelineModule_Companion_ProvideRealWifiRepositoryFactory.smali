.class public final Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final disabledWifiRepositoryProvider:Ljavax/inject/Provider;

.field public final wifiManagerProvider:Ljavax/inject/Provider;

.field public final wifiRepositoryImplFactoryProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;->wifiManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;->disabledWifiRepositoryProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;->wifiRepositoryImplFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideRealWifiRepository(Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/DisabledWifiRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;)Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/RealWifiRepository;
    .locals 12

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule;->Companion:Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;

    iget-object v4, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v10, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->semWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v6, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->wifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    iget-object v11, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v3, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v8, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->inputLogger:Lcom/android/systemui/log/LogBuffer;

    iget-object v9, p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;->tableLogger:Lcom/android/systemui/log/table/TableLogBuffer;

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl;-><init>(Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;Landroid/net/wifi/WifiManager;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;->wifiManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;->disabledWifiRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/DisabledWifiRepository;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;->wifiRepositoryImplFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/pipeline/dagger/StatusBarPipelineModule_Companion_ProvideRealWifiRepositoryFactory;->provideRealWifiRepository(Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/DisabledWifiRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/prod/WifiRepositoryImpl$Factory;)Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/RealWifiRepository;

    move-result-object p0

    return-object p0
.end method
