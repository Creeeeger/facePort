.class public final Landroidx/room/MultiInstanceInvalidationClient$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInvalidated(Ljava/util/Set;)V
    .locals 2

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Landroidx/room/IMultiInstanceInvalidationService;->broadcastInvalidation([Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ROOM"

    const-string v0, "Cannot broadcast invalidation"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
