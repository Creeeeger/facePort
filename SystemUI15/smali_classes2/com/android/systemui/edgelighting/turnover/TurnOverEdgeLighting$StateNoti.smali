.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public currentIsUpSide:I

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    return-void
.end method


# virtual methods
.method public final getMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onChangedUpdown(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChangedUpdown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->stopTurnOver()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnOver(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnRight()V

    :goto_0
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    return-void
.end method

.method public final onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "StateNoti$onNotification: should not reach here at normal case"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnOver(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnRight()V

    :goto_0
    return-object p0
.end method

.method public final onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onIdle()V

    new-instance v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    return-object v1
.end method

.method public final onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    const-string v1, "onRinging. So hide edge effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onIdle()V

    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    iget v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    return-object v0
.end method

.method public final onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "StateNoti$onRingingEnd: should not reach here at normal case"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method
