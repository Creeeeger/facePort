.class public interface abstract Lkotlinx/coroutines/CancellableContinuation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# virtual methods
.method public abstract cancel(Ljava/lang/Throwable;)Z
.end method

.method public abstract completeResume(Ljava/lang/Object;)V
.end method

.method public abstract invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract isActive()Z
.end method

.method public abstract resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
.end method

.method public abstract tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
.end method

.method public abstract tryResumeWithException(Ljava/lang/Throwable;)Lkotlinx/coroutines/internal/Symbol;
.end method
