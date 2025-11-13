.class public final Lcom/android/settingslib/spa/framework/compose/OverridableFlow;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final flow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final overrideChannel:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v1, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->overrideChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v2, Lkotlinx/coroutines/flow/ChannelAsFlow;

    invoke-direct {v2, v1, v0}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Z)V

    filled-new-array {v2, p1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->flow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    return-void
.end method
