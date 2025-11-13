.class public final Lcom/android/systemui/util/concurrency/UiThreadContextKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x96L


# direct methods
.method public static final runWithScissors(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lkotlin/jvm/functions/Function0;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lcom/android/systemui/util/concurrency/UiThreadContextKt$runWithScissors$1;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/util/concurrency/UiThreadContextKt$runWithScissors$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
