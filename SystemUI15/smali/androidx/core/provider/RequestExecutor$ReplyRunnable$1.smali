.class public final Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$consumer:Landroidx/core/util/Consumer;

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/provider/RequestExecutor$ReplyRunnable;Landroidx/core/util/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$consumer:Landroidx/core/util/Consumer;

    iput-object p3, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
