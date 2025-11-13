.class final Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->dataStore:Landroidx/datastore/core/DataStore;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$7;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2$1;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    invoke-direct {p1, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/android/systemui/media/mediaoutput/common/DataStoreDebugLabsExt$special$$inlined$map$7;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
