.class public final Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final hostProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final resourcePickerProvider:Ljavax/inject/Provider;

.field public final viewProvider:Ljavax/inject/Provider;


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

    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->viewProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->hostProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->resourcePickerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesPanelQSPanelHost(Landroid/view/View;Lcom/android/systemui/qs/QSTileHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)Lcom/android/systemui/qs/QSPanelHost;
    .locals 7

    sget-object v0, Lcom/android/systemui/qs/dagger/QSScopeModule;->Companion:Lcom/android/systemui/qs/dagger/QSScopeModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost;

    const v1, 0x7f0a0996

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/QSPanelHost;-><init>(ILandroid/view/View;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTileHost;

    iget-object v2, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->resourcePickerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/qs/dagger/QSScopeModule_Companion_ProvidesPanelQSPanelHostFactory;->providesPanelQSPanelHost(Landroid/view/View;Lcom/android/systemui/qs/QSTileHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)Lcom/android/systemui/qs/QSPanelHost;

    move-result-object p0

    return-object p0
.end method
