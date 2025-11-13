.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

.field public mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

.field public mIsEnabled:Z

.field public mIsUpsideDown:I

.field public mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

.field public mRequestor:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

.field public final mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

.field public final mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    new-instance v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-direct {v0, p1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    return-void
.end method


# virtual methods
.method public final setEnable()V
    .locals 2

    const-string/jumbo v0, "setEnable: false"

    const-string v1, "TurnOverEdgeLighting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mStateListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    iput-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    return-void
.end method

.method public final stopTurnOver()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    new-instance v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onIdle()V

    :goto_0
    return-void
.end method
