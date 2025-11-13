.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final compatUIProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final recentTasksOptionalProvider:Ljavax/inject/Provider;

.field public final shellCommandHandlerProvider:Ljavax/inject/Provider;

.field public final shellInitProvider:Ljavax/inject/Provider;

.field public final taskStackListenerProvider:Ljavax/inject/Provider;

.field public final unfoldAnimationControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->shellInitProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->compatUIProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->unfoldAnimationControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->recentTasksOptionalProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideShellTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    move-object/from16 v7, p6

    invoke-direct {v0, v7}, Lcom/android/wm/shell/sysui/ShellInit;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    move-object v2, p1

    :goto_0
    new-instance v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x0

    move-object v3, p3

    invoke-virtual {p3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/compatui/api/CompatUIHandler;

    move-object v1, v0

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/api/CompatUIHandler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->shellInitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->compatUIProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->unfoldAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->recentTasksOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->taskStackListenerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-static/range {v1 .. v8}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->provideShellTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    return-object p0
.end method
