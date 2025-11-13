.class public final Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$mediaDevicesUpdates$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$mediaDevicesUpdates$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceAttributesChanged()V
    .locals 1

    sget-object v0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$DevicesUpdate$DeviceAttributesChanged;->INSTANCE:Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$DevicesUpdate$DeviceAttributesChanged;

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$mediaDevicesUpdates$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$DevicesUpdate$DeviceListUpdate;

    invoke-direct {v0, p1}, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$DevicesUpdate$DeviceListUpdate;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$mediaDevicesUpdates$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    sget-object p1, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$DevicesUpdate$SelectedDeviceStateChanged;->INSTANCE:Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$DevicesUpdate$SelectedDeviceStateChanged;

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/LocalMediaRepositoryImpl$mediaDevicesUpdates$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
