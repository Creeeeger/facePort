.class public abstract Landroidx/lifecycle/FlowExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static flowWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleRegistry;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;
    .locals 3

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v1, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    return-object p0
.end method
