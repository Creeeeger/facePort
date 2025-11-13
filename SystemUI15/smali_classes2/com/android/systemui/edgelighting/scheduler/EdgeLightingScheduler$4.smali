.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final stopNotification(Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "EdgeLightingScheduler"

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iput-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    const-string/jumbo v0, "stopNotification"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "stop Notification to turn to heads up"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->requestStopService()V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->releaseWakeLock()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "stopNotification not exist. so stop service"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->requestStopService()V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->releaseWakeLock()V

    :goto_0
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->requestDozeStateSubScreen(Z)V

    goto :goto_2

    :cond_2
    iput-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    goto :goto_1

    :cond_3
    iput-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    :goto_1
    const-string/jumbo p1, "stopNotification: end with turnover"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    :cond_5
    return-void
.end method
