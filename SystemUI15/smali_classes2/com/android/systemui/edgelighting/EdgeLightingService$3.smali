.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/edge/OnEdgeLightingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenChanged(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->notifyScreenOn()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->refreshBackground()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->notifyScreenOff()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    new-instance v7, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;II)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    return-void
.end method

.method public final onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopEdgeLighting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
