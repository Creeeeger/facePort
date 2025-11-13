.class public final Lkotlinx/coroutines/AwaitAll;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final deferreds:[Lkotlinx/coroutines/Deferred;

.field public final notCompletedCount:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/Deferred;)V
    .locals 1

    const-string v0, "deferreds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll;->deferreds:[Lkotlinx/coroutines/Deferred;

    array-length p1, p1

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll;->notCompletedCount:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method
