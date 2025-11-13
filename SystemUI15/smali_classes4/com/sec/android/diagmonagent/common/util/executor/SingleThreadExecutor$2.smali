.class public final Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    invoke-interface {v0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;->run()V

    iget-object p0, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    invoke-interface {p0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;->onFinish()I

    return-void
.end method
