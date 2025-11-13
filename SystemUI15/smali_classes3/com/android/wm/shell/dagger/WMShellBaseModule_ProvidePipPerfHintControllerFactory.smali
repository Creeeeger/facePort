.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

.field public final systemPerformanceHinterOptionalProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;->systemPerformanceHinterOptionalProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providePipPerfHintController(Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/common/pip/PipPerfHintController;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/SystemPerformanceHinter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/common/pip/PipPerfHintController;-><init>(Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/SystemPerformanceHinter;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;->systemPerformanceHinterOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipPerfHintControllerFactory;->providePipPerfHintController(Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
