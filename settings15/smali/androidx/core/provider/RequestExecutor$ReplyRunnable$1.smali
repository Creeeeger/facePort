.class public final Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$consumer:Landroidx/core/util/Consumer;

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/provider/FontRequestWorker$2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$consumer:Landroidx/core/util/Consumer;

    iput-object p2, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$consumer:Landroidx/core/util/Consumer;

    iget-object p0, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$result:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
