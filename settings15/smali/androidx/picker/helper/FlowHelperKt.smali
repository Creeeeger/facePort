.class public abstract Landroidx/picker/helper/FlowHelperKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final loadIconSync(Lkotlinx/coroutines/flow/Flow;)V
    .locals 2

    new-instance v0, Landroidx/picker/helper/FlowHelperKt$loadIconSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/picker/helper/FlowHelperKt$loadIconSync$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method
