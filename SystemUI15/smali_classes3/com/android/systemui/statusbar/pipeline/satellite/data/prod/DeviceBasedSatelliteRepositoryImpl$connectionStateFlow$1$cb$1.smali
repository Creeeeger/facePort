.class public final Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/telephony/satellite/SatelliteModemStateCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1;->this$0:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSatelliteModemStateChanged(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->Companion:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$Companion;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1;->this$0:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1$1;-><init>(I)V

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$Companion;->i(Lcom/android/systemui/log/LogBuffer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/data/prod/DeviceBasedSatelliteRepositoryImpl$connectionStateFlow$1$cb$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Companion:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Unknown:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Off:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Connected:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->On:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Unknown:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    :goto_0
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
