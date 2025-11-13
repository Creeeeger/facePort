.class public final Lcom/android/systemui/globalactions/GlobalActionsComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# instance fields
.field public mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

.field public final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

.field public final mGlobalActionsProvider:Ljavax/inject/Provider;

.field public mPlugin:Lcom/android/systemui/plugins/GlobalActions;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ExtensionController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mGlobalActionsProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method


# virtual methods
.method public final handleShowGlobalActionsMenu(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setGlobalActionsVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/GlobalActions;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/GlobalActions;->showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;I)V

    return-void
.end method

.method public final handleShowShutdownUi(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/plugins/GlobalActions;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/GlobalActions;->showShutdownUi(ZLjava/lang/String;)V

    return-void
.end method

.method public final isFOTAAvailableForGlobalActions()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->isFOTAAvailableForGlobalActions()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onGlobalActionsHidden()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setGlobalActionsVisible(Z)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onGlobalActionsShown()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final reboot(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->reboot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final shutdown()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final start()V
    .locals 5

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;I)V

    const-class v0, Lcom/android/systemui/plugins/GlobalActions;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mGlobalActionsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda0;-><init>(Ljavax/inject/Provider;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;

    invoke-direct {v4, v0, v2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/util/function/Supplier;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsComponent;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/GlobalActions;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
