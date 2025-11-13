.class public final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $deviceInfoMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Ljava/util/Map;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;->$deviceInfoMap:Ljava/util/Map;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-class v1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;

    const-string v2, "deviceInfo"

    const-string v3, "SmartMirroringClient"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;->getParseResponse(Landroid/os/Bundle;)Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tRSP_DISCONNECT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_1
    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;->getParseResponse(Landroid/os/Bundle;)Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tRSP_CONNECT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_2
    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;->getParseResponse(Landroid/os/Bundle;)Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tRSP_SCAN : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;->$deviceInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;->$deviceInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;->$deviceInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceInfo;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object p1, v4

    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1$handleMessage$10;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;->$deviceInfoMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p1, p0, v0, v4}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1$clientMessenger$1$handleMessage$10;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, v4, v4, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
