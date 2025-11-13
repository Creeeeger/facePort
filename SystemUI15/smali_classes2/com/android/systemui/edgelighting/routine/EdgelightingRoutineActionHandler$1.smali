.class public final Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "EdgelightingRoutineActionHandler"

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo p1, "stopEdgeEffect()"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    const/4 v2, 0x0

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mContext:Landroid/content/Context;

    const/16 v4, 0x8b3

    invoke-direct {p1, v3, v4, v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingEffect:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setForceSettingValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz p1, :cond_5

    iput-boolean v1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "registerScreenStateReceiver"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;I)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$ScreenStateReceiver;

    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6
    const-string/jumbo p1, "startEdgeEffect()"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iget-wide v2, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    :goto_1
    return-void
.end method
