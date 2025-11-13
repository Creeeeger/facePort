.class Lcom/android/internal/infra/AndroidFuture$ThenCombine;
.super Lcom/android/internal/infra/AndroidFuture;
.source "AndroidFuture.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThenCombine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TV;>;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCombineResults:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mResultT:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile blacklist mSourceU:Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$dV1DNmYzyssi1MUOEQlOl3zlPKE(Lcom/android/internal/infra/AndroidFuture$ThenCombine;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->lambda$accept$0(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mCombineResults:Ljava/util/function/BiFunction;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private synthetic blacklist lambda$accept$0(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/infra/AndroidFuture$ThenCombine;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mCombineResults:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
