.class public Lcom/android/internal/os/BinderfsStatsReader;
.super Ljava/lang/Object;
.source "BinderfsStatsReader.java"


# instance fields
.field private final blacklist mPath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/dev/binderfs/binder_logs/stats"

    iput-object v0, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist handleFreeAsyncSpace(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/internal/util/ProcFileReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "proc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "free"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "async"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "space"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
