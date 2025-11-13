.class public final Lcom/samsung/android/nexus/particle/emitter/FrameController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCheckInterval:I

.field public final mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field public mCurFrameRate:I

.field public final mFrameDownStepFrame:I

.field public final mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

.field public mIsStarted:Z

.field public final mMaxFrameRate:I

.field public final mMinFrameRate:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMaxFrameRate:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMinFrameRate:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCheckInterval:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameDownStepFrame:I

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;-><init>(Lcom/samsung/android/nexus/particle/emitter/FrameController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    return-void
.end method


# virtual methods
.method public final startFrameRateDown()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mIsStarted:Z

    const-string v0, "FrameController"

    const-string v1, "Start frame control."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMaxFrameRate:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCheckInterval:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
