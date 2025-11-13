.class Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;
.super Lcom/android/internal/infra/AndroidFuture;
.source "AndroidFuture.java"

# interfaces
.implements Ljava/util/function/BiConsumer;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThenComposeAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TU;>;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mFn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mSourceResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mSourceResult:Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mSourceResult:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mSourceResult:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletionStage;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletionStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    nop

    invoke-interface {v1, p0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    return-void

    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    throw v1
.end method
