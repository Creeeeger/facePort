.class public final Lkotlinx/coroutines/internal/ThreadState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public final elements:[Lkotlinx/coroutines/internal/ThreadLocalElement;

.field public i:I

.field public final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    new-array p1, p1, [Lkotlinx/coroutines/internal/ThreadLocalElement;

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/internal/ThreadLocalElement;

    return-void
.end method
