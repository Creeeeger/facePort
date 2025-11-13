.class public final Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainChoreographerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final executorProvider:Ljavax/inject/Provider;


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

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainChoreographerFactory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideShellMainChoreographer(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/view/Choreographer;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Landroid/view/Choreographer;

    new-instance v1, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$$ExternalSyntheticLambda0;-><init>([Landroid/view/Choreographer;)V

    invoke-interface {p0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to obtain main Choreographer."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainChoreographerFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainChoreographerFactory;->provideShellMainChoreographer(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/view/Choreographer;

    move-result-object p0

    return-object p0
.end method
