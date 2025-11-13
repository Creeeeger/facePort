.class final Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel;Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;->alarmClockInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->Companion:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->formatterDateOnly:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel;

    check-cast v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;->is24HourFormat:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->Companion:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->formatter24Hour:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->Companion:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->formatter12Hour:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    instance-of v0, v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NoAlarmSet;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130e23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_3
    :goto_1
    const v0, 0x7f0807fb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/alarm/domain/AlarmTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
