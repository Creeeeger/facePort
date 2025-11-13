.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final displayControllerProvider:Ljavax/inject/Provider;

.field public final displayLayoutProvider:Ljavax/inject/Provider;

.field public final jankMonitorProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final shellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final shellControllerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final taskStackListenerProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;

.field public final windowManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayLayoutProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->jankMonitorProvider:Ljavax/inject/Provider;

    iput-object p11, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p12, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideOneHandedController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Landroid/view/WindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/onehanded/OneHandedController;
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v13, p10

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    move-object/from16 v17, v3

    invoke-direct {v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;-><init>()V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    move-object/from16 v18, v0

    invoke-direct {v0, v9}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    move-object/from16 v19, v0

    invoke-direct {v0, v13}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedState;

    move-object/from16 v20, v1

    invoke-direct {v1}, Lcom/android/wm/shell/onehanded/OneHandedState;-><init>()V

    new-instance v1, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    invoke-direct {v1, v9}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    move-object/from16 v16, v5

    move-object/from16 v2, p4

    invoke-direct {v5, v9, v3, v2, v1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Landroid/view/WindowManager;Lcom/android/wm/shell/onehanded/BackgroundWindowManager;)V

    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    invoke-direct {v4, v9}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    move-object v15, v1

    invoke-direct {v1, v0, v13}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    move-object v14, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAnimationController;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    move-object/from16 v21, v0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController;

    move-object v8, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v22, p7

    move-object/from16 v23, p10

    move-object/from16 v24, p11

    invoke-direct/range {v8 .. v24}, Lcom/android/wm/shell/onehanded/OneHandedController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedState;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellInitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->shellControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->displayLayoutProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->jankMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Landroid/os/Handler;

    invoke-static/range {v1 .. v12}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->provideOneHandedController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Landroid/view/WindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/onehanded/OneHandedController;

    move-result-object p0

    return-object p0
.end method
