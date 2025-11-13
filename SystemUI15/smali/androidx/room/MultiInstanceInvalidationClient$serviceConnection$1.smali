.class public final Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    sget v0, Landroidx/room/IMultiInstanceInvalidationService$Stub;->$r8$clinit:I

    sget-object v0, Landroidx/room/IMultiInstanceInvalidationService;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/room/IMultiInstanceInvalidationService;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;

    invoke-direct {v0, p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v0, p1, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->setUpRunnable:Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, p1, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable:Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    return-void
.end method
