.class public final Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;


# instance fields
.field public final context:Landroid/content/Context;

.field public final events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$events$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$events$1;-><init>(Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$filter$1;

    invoke-direct {p1, v0, p0}, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;)V

    new-instance v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1;

    invoke-direct {v0, p1, p0}, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-void
.end method
