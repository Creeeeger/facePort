.class public final Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$alarmCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$alarmCallback$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$alarmCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NoAlarmSet;->INSTANCE:Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NoAlarmSet;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$alarmCallback$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;->dateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    invoke-virtual {v1}, Lcom/android/systemui/util/time/DateFormatUtil;->is24HourFormat()Z

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;-><init>(ZLandroid/app/AlarmManager$AlarmClockInfo;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$alarmCallback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
