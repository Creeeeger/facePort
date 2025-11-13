.class public final Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;
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
.field private final utilsProvider:Ljavax/inject/Provider;
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

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;->utilsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/pluginlock/PluginLockUtils;)Lcom/android/systemui/pluginlock/PluginLockDelegateApp;
    .locals 1

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;-><init>(Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/pluginlock/PluginLockDelegateApp;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;->utilsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;->newInstance(Lcom/android/systemui/pluginlock/PluginLockUtils;)Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp_Factory;->get()Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    move-result-object p0

    return-object p0
.end method
