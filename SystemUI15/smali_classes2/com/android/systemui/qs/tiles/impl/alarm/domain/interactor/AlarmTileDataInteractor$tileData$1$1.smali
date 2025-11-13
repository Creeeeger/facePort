.class final Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $alarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$1;->$alarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor;->alarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileDataInteractor$tileData$1$1;->$alarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
