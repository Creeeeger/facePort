.class public final Lcom/android/systemui/statusbar/events/BatteryEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/StatusEvent;


# instance fields
.field public final batteryLevel:I

.field public final contentDescription:Ljava/lang/String;

.field public forceVisible:Z

.field public final priority:I

.field public final showAnimation:Z

.field public final viewCreator:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->batteryLevel:I

    const/16 p1, 0x32

    iput p1, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->priority:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->showAnimation:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->contentDescription:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;-><init>(Lcom/android/systemui/statusbar/events/BatteryEvent;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getForceVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->forceVisible:Z

    return p0
.end method

.method public final getPriority()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->priority:I

    return p0
.end method

.method public final getShowAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->showAnimation:Z

    return p0
.end method

.method public final getViewCreator()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setForceVisible()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->forceVisible:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "BatteryEvent"

    return-object p0
.end method
