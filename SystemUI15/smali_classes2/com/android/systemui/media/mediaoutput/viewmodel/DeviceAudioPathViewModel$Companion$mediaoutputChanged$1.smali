.class final Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;
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
.field final synthetic $this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->$this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->$this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->$this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v1, v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v1, v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->deviceStatusOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;

    invoke-virtual {v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl;->getDevices()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;

    iget-object v5, v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, p1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->label:I

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/channels/ChannelCoroutine;

    iget-object v5, v5, Lkotlinx/coroutines/channels/ChannelCoroutine;->_channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v5, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_5
    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;

    invoke-direct {p1, v4}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->$this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v1, v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v1, v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputSelectedOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;->addMediaOutputSelectedCallback(Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;)V

    new-instance v1, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$3;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->$this_mediaoutputChanged:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    invoke-direct {v1, v3, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$3;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1$mediaOutputSelectedCallback$1;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion$mediaoutputChanged$1;->label:I

    invoke-static {v4, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
