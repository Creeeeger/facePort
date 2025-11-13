.class final Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl$getDevices$1;
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl$getDevices$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl$getDevices$1;

    invoke-direct {v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl$getDevices$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl$getDevices$1;->INSTANCE:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceStatusOperationImpl$getDevices$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;

    check-cast p1, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;

    invoke-virtual {p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub$Proxy;->getDevices()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;

    new-instance v9, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;

    iget-object v2, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceId:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->iconUrl:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationId:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationName:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomId:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomName:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/devicestatus/DeviceDomain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
