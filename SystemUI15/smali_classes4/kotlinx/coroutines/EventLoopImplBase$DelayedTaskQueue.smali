.class public final Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
.super Lkotlinx/coroutines/internal/ThreadSafeHeap;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public timeNow:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    return-void
.end method
