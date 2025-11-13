.class public abstract Lcom/android/systemui/statusbar/policy/HeadsUpManagerExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getHeadsUpEvents(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    sget-object v0, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerExtKt$headsUpEvents$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerExtKt$headsUpEvents$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
