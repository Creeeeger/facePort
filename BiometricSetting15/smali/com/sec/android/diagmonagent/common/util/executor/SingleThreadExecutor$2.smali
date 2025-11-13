.class public final Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;->run()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;->onFinish()I

    .line 9
    .line 10
    .line 11
    return-void
.end method
