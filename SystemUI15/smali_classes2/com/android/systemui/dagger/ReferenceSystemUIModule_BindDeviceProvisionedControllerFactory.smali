.class public final Lcom/android/systemui/dagger/ReferenceSystemUIModule_BindDeviceProvisionedControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final deviceProvisionedControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/ReferenceSystemUIModule_BindDeviceProvisionedControllerFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static bindDeviceProvisionedController(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->initted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->updateValues(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userChangedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->backgroundExecutor:Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisionedUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->observer:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$observer$1;

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupUri:Landroid/net/Uri;

    invoke-interface {v1, p0, v3, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/ReferenceSystemUIModule_BindDeviceProvisionedControllerFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/dagger/ReferenceSystemUIModule_BindDeviceProvisionedControllerFactory;->bindDeviceProvisionedController(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V

    return-object p0
.end method
