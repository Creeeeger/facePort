.class public final Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final globalSettingsProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->globalSettingsProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideDemoModeController(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/demomode/DemoModeController;
    .locals 9

    new-instance v0, Lcom/android/systemui/demomode/DemoModeController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/demomode/DemoModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iget-boolean p0, v0, Lcom/android/systemui/demomode/DemoModeController;->initialized:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/demomode/DemoModeController;->initialized:Z

    iget-object p0, v0, Lcom/android/systemui/demomode/DemoModeController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string p1, "DemoModeController"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object p0, v0, Lcom/android/systemui/demomode/DemoModeController;->tracker:Lcom/android/systemui/demomode/DemoModeController$tracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->startTracking()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "com.android.systemui.demo"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v7, "android.permission.DUMP"

    iget-object v1, v0, Lcom/android/systemui/demomode/DemoModeController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, v0, Lcom/android/systemui/demomode/DemoModeController;->broadcastReceiver:Lcom/android/systemui/demomode/DemoModeController$broadcastReceiver$1;

    const/4 v4, 0x0

    const/16 v8, 0x14

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    iget-object v2, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->globalSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object p0, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->provideDemoModeController(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/demomode/DemoModeController;

    move-result-object p0

    return-object p0
.end method
