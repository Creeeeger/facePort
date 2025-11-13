.class public final Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    sget v0, Landroidx/room/MultiInstanceInvalidationService$binder$1;->$r8$clinit:I

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

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, p1, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable:Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    return-void
.end method
