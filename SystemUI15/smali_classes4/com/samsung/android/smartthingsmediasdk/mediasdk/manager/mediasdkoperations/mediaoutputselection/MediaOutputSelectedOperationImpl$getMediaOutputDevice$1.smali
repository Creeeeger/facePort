.class final Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl$getMediaOutputDevice$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $deviceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl$getMediaOutputDevice$1;->this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    iput-object p2, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl$getMediaOutputDevice$1;->$deviceId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

    iget-object v0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl$getMediaOutputDevice$1;->this$0:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    invoke-static {v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;->access$isSTAppVersionMediaOutputDeviceV2Supported(Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl$getMediaOutputDevice$1;->$deviceId:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;

    invoke-virtual {p1, p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;->getMediaOutputDevicesV2(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;

    new-instance v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;

    iget-object v2, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceId:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceType:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->description:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl$getMediaOutputDevice$1;->$deviceId:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;

    invoke-virtual {p1, p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;->getMediaOutputDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDevice;

    new-instance v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;

    iget-object v2, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDevice;->deviceId:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDevice;->deviceName:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p1
.end method
