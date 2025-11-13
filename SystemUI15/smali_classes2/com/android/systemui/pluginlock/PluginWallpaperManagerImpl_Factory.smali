.class public final Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;
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
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final delegateAppProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final helperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final mediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final monitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final utilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->mediatorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->delegateAppProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->helperProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->utilsProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->monitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;"
        }
    .end annotation

    new-instance v7, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;
    .locals 8

    new-instance v7, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->mediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->delegateAppProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->helperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->utilsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockUtils;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->monitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->newInstance(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl_Factory;->get()Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    move-result-object p0

    return-object p0
.end method
