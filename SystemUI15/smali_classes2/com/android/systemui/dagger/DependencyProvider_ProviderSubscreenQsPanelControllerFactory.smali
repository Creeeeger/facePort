.class public final Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final hostProvider:Ljavax/inject/Provider;

.field public final injectionInflaterProvider:Ljavax/inject/Provider;

.field public final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->injectionInflaterProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->hostProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providerSubscreenQsPanelController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/qp/SubscreenQsPanelController;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "display"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/16 v0, 0x7e1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/qp/SubscreenQsPanelController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qp/SubscreenQsPanelController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)V

    move-object p1, p0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->injectionInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/InjectionInflationController;

    iget-object v2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->providerSubscreenQsPanelController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/qp/SubscreenQsPanelController;

    move-result-object p0

    return-object p0
.end method
