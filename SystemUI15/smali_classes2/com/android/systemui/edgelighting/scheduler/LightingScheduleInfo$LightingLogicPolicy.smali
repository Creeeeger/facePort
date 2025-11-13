.class public final Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isNeedLightOnWhenTurnOveredLcdOff:Z

.field public isNeedLightOnWhenTurnOveredLcdOn:Z

.field public isNeedLightOnWhenTurnRightedLcdOff:Z

.field public isNeedLightOnWhenTurnRightedLcdOn:Z

.field public isNeedToKeepWhenLcdOff:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    return-void
.end method
