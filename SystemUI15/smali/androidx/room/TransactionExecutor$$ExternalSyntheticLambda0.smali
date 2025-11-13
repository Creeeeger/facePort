.class public final synthetic Landroidx/room/TransactionExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Landroidx/room/TransactionExecutor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TransactionExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Landroidx/room/TransactionExecutor$$ExternalSyntheticLambda0;->f$1:Landroidx/room/TransactionExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/room/TransactionExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iget-object p0, p0, Landroidx/room/TransactionExecutor$$ExternalSyntheticLambda0;->f$1:Landroidx/room/TransactionExecutor;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    throw v0
.end method
