.class public final Lcom/android/systemui/flags/PluggedInCondition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/flags/ConditionalRestarter$Condition;


# instance fields
.field public final batteryControllerLazy:Ldagger/Lazy;

.field public final canRestartNow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/PluggedInCondition;->batteryControllerLazy:Ldagger/Lazy;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v0, Lcom/android/systemui/flags/PluggedInCondition$canRestartNow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/flags/PluggedInCondition$canRestartNow$1;-><init>(Lcom/android/systemui/flags/PluggedInCondition;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/flags/PluggedInCondition;->canRestartNow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getCanRestartNow()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/PluggedInCondition;->canRestartNow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method
