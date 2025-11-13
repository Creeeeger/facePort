.class public final Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final mainThreadProvider:Ljavax/inject/Provider;

.field public final sysuiMainHandlerProvider:Ljavax/inject/Provider;


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

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->sysuiMainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideShellMainHandler(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule;->createShellMainThread()Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    const-wide/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Landroid/os/Looper;->setTraceTag(J)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p2

    :cond_2
    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->sysuiMainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->provideShellMainHandler(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
