.class public final Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final managerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


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

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->managerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;

    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/samsung/systemui/splugins/SPluginManager;)Lcom/samsung/systemui/splugins/SPluginDependencyProvider;
    .locals 1

    new-instance v0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;-><init>(Lcom/samsung/systemui/splugins/SPluginManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/samsung/systemui/splugins/SPluginDependencyProvider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->managerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->newInstance(Lcom/samsung/systemui/splugins/SPluginManager;)Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->get()Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    move-result-object p0

    return-object p0
.end method
