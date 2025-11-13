.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final accessibilityManagerProvider:Ljavax/inject/Provider;

.field public final compatUIComponentFactoryProvider:Ljavax/inject/Provider;

.field public final compatUIConfigurationProvider:Ljavax/inject/Provider;

.field public final compatUIRepositoryProvider:Ljavax/inject/Provider;

.field public final compatUIShellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final compatUIStateProvider:Ljavax/inject/Provider;

.field public final compatUIStatusManagerProvider:Ljavax/inject/Provider;

.field public final componentIdGeneratorProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final displayInsetsControllerProvider:Ljavax/inject/Provider;

.field public final dockStateReaderProvider:Ljavax/inject/Provider;

.field public final imeControllerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final shellControllerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final syncQueueProvider:Ljavax/inject/Provider;

.field public final transitionsLazyProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
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

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->imeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->transitionsLazyProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->dockStateReaderProvider:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIConfigurationProvider:Ljavax/inject/Provider;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIShellCommandHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->componentIdGeneratorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIStatusManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/wm/shell/compatui/CompatUIStatusManager;)Ljava/util/Optional;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->appCompatUiFramework()Z

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-interface/range {p9 .. p9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/common/DockStateReader;

    invoke-interface/range {p10 .. p10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-interface/range {p11 .. p11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    invoke-interface/range {p12 .. p12}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/accessibility/AccessibilityManager;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/android/wm/shell/compatui/CompatUIController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;Landroid/view/accessibility/AccessibilityManager;Lcom/android/wm/shell/compatui/CompatUIStatusManager;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->displayInsetsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->imeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->transitionsLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->dockStateReaderProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIConfigurationProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v11

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIShellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v12

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v13

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/impl/DefaultCompatUIRepository;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/api/CompatUIState;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->componentIdGeneratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/impl/DefaultComponentIdGenerator;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIComponentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/impl/DefaultCompatUIComponentFactory;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->compatUIStatusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v14, p0

    check-cast v14, Lcom/android/wm/shell/compatui/CompatUIStatusManager;

    invoke-static/range {v1 .. v14}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->provideCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/wm/shell/compatui/CompatUIStatusManager;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
