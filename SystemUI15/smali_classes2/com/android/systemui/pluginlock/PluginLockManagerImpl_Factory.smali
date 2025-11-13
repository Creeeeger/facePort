.class public final Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;
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

.field private final delegateSysUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final desktopManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final foldControllerProvider:Ljavax/inject/Provider;
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

.field private final pluginWallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final policyProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->mediatorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->policyProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->delegateAppProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->delegateSysUiProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->helperProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->utilsProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->pluginWallpaperManagerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->foldControllerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;"
        }
    .end annotation

    new-instance v11, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newInstance(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/util/DesktopManager;Landroid/content/Context;)Lcom/android/systemui/pluginlock/PluginLockManagerImpl;
    .locals 12

    new-instance v11, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/util/DesktopManager;Landroid/content/Context;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/android/systemui/pluginlock/PluginLockManagerImpl;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->mediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->policyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->delegateAppProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->delegateSysUiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->helperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->utilsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockUtils;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->pluginWallpaperManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->foldControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/keyguard/KeyguardFoldController;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/util/DesktopManager;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Landroid/content/Context;

    invoke-static/range {v1 .. v10}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->newInstance(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/util/DesktopManager;Landroid/content/Context;)Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl_Factory;->get()Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    move-result-object p0

    return-object p0
.end method
