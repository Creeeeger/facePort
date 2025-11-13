.class public final Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$state$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$state$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$state$1$callback$1;->this$0:Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$state$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$state$1$callback$1;->this$0:Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;->deviceStateMap:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$IdsPerDeviceState;

    iget-object v2, v2, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$IdsPerDeviceState;->ids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$IdsPerDeviceState;

    if-eqz v1, :cond_2

    iget-object p0, v1, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$IdsPerDeviceState;->deviceState:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->UNKNOWN:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    :cond_3
    check-cast v0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
