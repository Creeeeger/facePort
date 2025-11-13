.class public final Lcom/android/systemui/util/concurrency/UiThreadContext;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final choreographer:Landroid/view/Choreographer;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final handler:Landroid/os/Handler;

.field private final looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->looper:Landroid/os/Looper;

    iput-object p2, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->choreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final getChoreographer()Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->choreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public final isCurrentThread()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->looper:Landroid/os/Looper;

    invoke-static {p0}, Lcom/android/systemui/util/Assert;->isCurrentThread(Landroid/os/Looper;)V

    return-void
.end method

.method public final runWithScissors(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/android/systemui/util/concurrency/UiThreadContextKt;->runWithScissors(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final runWithScissors(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/UiThreadContext;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method
