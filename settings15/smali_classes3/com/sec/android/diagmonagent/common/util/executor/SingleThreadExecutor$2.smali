.class public final Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

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
