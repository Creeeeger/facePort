.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    return-void
.end method


# virtual methods
.method public final getMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isNeedTurnOverChecker()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "isNeedTurnOverChecker: not enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mRequestor:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    if-eqz v1, :cond_1

    const-string v0, "isNeedTurnOverChecker: not support screen on"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    if-nez v1, :cond_2

    const-string v0, "isNeedTurnOverChecker: not support in cover closed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/edgelighting/utils/Utils;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "isNeedTurnOverChecker: not support desktop mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v1
.end method

.method public final onChangedUpdown(I)V
    .locals 1

    const-string v0, "onChangedUpdown: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v1, "Device don\'t support position sensor type."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->isNeedTurnOverChecker()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->run(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;)V

    new-instance p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    :cond_1
    return-object p0
.end method

.method public final onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 0

    return-object p0
.end method

.method public final onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->isNeedTurnOverChecker()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->run(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;)V

    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v1, "onRingingEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
