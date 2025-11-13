.class public final Lkotlinx/coroutines/flow/SharingConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public final extraBufferCapacity:I

.field public final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field public final upstream:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(ILkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/flow/Flow;)V
    .locals 1

    const-string/jumbo v0, "upstream"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBufferOverflow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Lkotlinx/coroutines/flow/Flow;

    iput p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    iput-object p3, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method
