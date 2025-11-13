.class public final Lcom/android/systemui/qs/dagger/QSScopeModule_ProvidesSecQuickQSPanelFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final viewProvider:Ljavax/inject/Provider;


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

    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_ProvidesSecQuickQSPanelFactory;->viewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesSecQuickQSPanel(Landroid/view/View;)Lcom/android/systemui/qs/SecQuickQSPanel;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/dagger/QSScopeModule;->Companion:Lcom/android/systemui/qs/dagger/QSScopeModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0993

    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQuickQSPanel;

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSScopeModule_ProvidesSecQuickQSPanelFactory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSScopeModule_ProvidesSecQuickQSPanelFactory;->providesSecQuickQSPanel(Landroid/view/View;)Lcom/android/systemui/qs/SecQuickQSPanel;

    move-result-object p0

    return-object p0
.end method
