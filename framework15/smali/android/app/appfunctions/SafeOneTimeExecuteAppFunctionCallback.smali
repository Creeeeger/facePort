.class public Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
.super Ljava/lang/Object;
.source "SafeOneTimeExecuteAppFunctionCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SafeOneTimeExecuteApp"


# instance fields
.field private final blacklist mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

.field private final blacklist mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

.field private final blacklist mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mUpdateHistoryCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/app/appfunctions/AppFunctionExecutionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Ljava/util/function/Consumer;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/IExecuteAppFunctionCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appfunctions/AppFunctionExecutionRecord;",
            ">;",
            "Landroid/app/appfunctions/AppFunctionExecutionRecord;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/AppFunctionExecutionRecord;

    iput-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    return-void
.end method


# virtual methods
.method public blacklist disable()V
    .locals 2

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 3

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_0

    const-string v0, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->setError(Landroid/app/appfunctions/AppFunctionException;)V

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to invoke the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 3

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mOnResultCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "SafeOneTimeExecuteApp"

    if-nez v0, :cond_0

    const-string v0, "Ignore subsequent calls to onResult/onError()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-virtual {v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->setResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mUpdateHistoryCallback:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mAppFunctionExecutionRecord:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->mCallback:Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    invoke-interface {v0, p1}, Landroid/app/appfunctions/IExecuteAppFunctionCallback;->onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to invoke the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
