.class public interface abstract Lkotlinx/coroutines/channels/SendChannel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract close(Ljava/lang/Throwable;)Z
.end method

.method public abstract invokeOnClose(Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract isClosedForSend()Z
.end method

.method public abstract send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
.end method
