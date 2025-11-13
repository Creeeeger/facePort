.class public abstract Lcom/google/common/util/concurrent/FluentFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# virtual methods
.method public final transform(Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;->function:Ljava/lang/Object;

    sget-object p1, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
