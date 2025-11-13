.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public currentIsUpSide:I

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnOver(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMode()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final onChangedUpdown(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChangedUpdown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->stopTurnOver()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v1, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-virtual {v1, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnOver(Z)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    return-void
.end method

.method public final onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onRingingEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

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
