.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationBarComponent;


# instance fields
.field public final context:Landroid/content/Context;

.field public final navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

.field public navigationBarProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public navigationBarTransitionsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public provideLayoutInflaterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public provideNavigationBarFrameProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public provideNavigationBarviewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public provideWindowManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

.field public final savedState:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->savedState:Landroid/os/Bundle;

    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->initialize(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final autoHideControllerFactory()Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideMainHandlerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideIWindowManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/IWindowManager;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;-><init>(Landroid/os/Handler;Landroid/view/IWindowManager;)V

    return-object v0
.end method

.method public final deadZone()Lcom/android/systemui/navigationbar/buttons/DeadZone;
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    return-object v0
.end method

.method public final getNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    return-object p0
.end method

.method public final initialize(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    const/4 v2, 0x2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    const/4 v2, 0x3

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    const/4 v2, 0x1

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    const/4 v2, 0x4

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->provideWindowManagerProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    const/4 v2, 0x5

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->navigationBarProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public final lightBarControllerFactory()Lcom/android/systemui/statusbar/phone/LightBarController$Factory;
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->javaAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->darkIconDispatcherImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBatteryControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->navigationModeControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarModeRepositoryImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->dumpManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideDisplayTrackerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/settings/DisplayTracker;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->samsungLightBarControlHelper()Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    move-result-object v8

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->samsungStatusBarGrayIconHelperProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/LightBarController$Factory;-><init>(Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;)V

    return-object v10
.end method

.method public final navBarButtonClickLogger()Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideNavBarButtonClickLogBufferProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0
.end method

.method public final navbarOrientationTrackingLogger()Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$NavigationBarComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideNavbarOrientationTrackingLogBufferProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0
.end method
