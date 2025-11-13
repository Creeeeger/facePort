.class Landroid/app/ambientcontext/AmbientContextManager$1;
.super Landroid/app/ambientcontext/IAmbientContextObserver$Stub;
.source "AmbientContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ambientcontext/AmbientContextManager;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/util/concurrent/Executor;Landroid/app/ambientcontext/AmbientContextCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ambientcontext/AmbientContextManager;

.field final synthetic blacklist val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/ambientcontext/AmbientContextManager;Ljava/util/concurrent/Executor;Landroid/app/ambientcontext/AmbientContextCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->this$0:Landroid/app/ambientcontext/AmbientContextManager;

    iput-object p2, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onEvents$0(Landroid/app/ambientcontext/AmbientContextCallback;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/ambientcontext/AmbientContextCallback;->onEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationComplete$1(Landroid/app/ambientcontext/AmbientContextCallback;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/ambientcontext/AmbientContextCallback;->onRegistrationComplete(I)V

    return-void
.end method


# virtual methods
.method public blacklist onEvents(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

    new-instance v4, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ambientcontext/AmbientContextCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onRegistrationComplete(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

    new-instance v4, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/ambientcontext/AmbientContextCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
