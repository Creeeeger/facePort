.class public final Lkotlinx/coroutines/CoroutineDispatcher$Key;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# instance fields
.field public final safeCast:Lkotlin/jvm/functions/Function1;

.field public final topmostKey:Lkotlin/coroutines/CoroutineContext$Key;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/CoroutineDispatcher$Key;->safeCast:Lkotlin/jvm/functions/Function1;

    instance-of p2, p1, Lkotlinx/coroutines/CoroutineDispatcher$Key;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher$Key;

    iget-object p1, p1, Lkotlinx/coroutines/CoroutineDispatcher$Key;->topmostKey:Lkotlin/coroutines/CoroutineContext$Key;

    :cond_0
    iput-object p1, p0, Lkotlinx/coroutines/CoroutineDispatcher$Key;->topmostKey:Lkotlin/coroutines/CoroutineContext$Key;

    return-void
.end method
