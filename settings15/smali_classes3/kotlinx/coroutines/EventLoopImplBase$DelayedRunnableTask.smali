.class public final Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;
.super Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final block:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;-><init>(J)V

    iput-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
