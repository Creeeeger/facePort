.class public final Lcom/android/settingslib/spa/framework/util/StateFlowBridge;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final flow:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final stateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->stateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->flow:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    return-void
.end method


# virtual methods
.method public final Sync(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x556fa3a3

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/spa/framework/util/StateFlowBridge$Sync$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settingslib/spa/framework/util/StateFlowBridge$Sync$1;-><init>(Lcom/android/settingslib/spa/framework/util/StateFlowBridge;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settingslib/spa/framework/util/StateFlowBridge$Sync$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spa/framework/util/StateFlowBridge$Sync$2;-><init>(Lcom/android/settingslib/spa/framework/util/StateFlowBridge;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method
