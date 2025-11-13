.class public final Lcom/samsung/android/nexus/particle/emitter/FrameController$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/FrameController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;->this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController$1;->this$0:Lcom/samsung/android/nexus/particle/emitter/FrameController;

    iget p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameDownStepFrame:I

    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    iget p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mMinFrameRate:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Do frame down rate : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FrameController"

    invoke-static {v3, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    iget v3, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCurFrameRate:I

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    if-gtz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "NexusContext"

    const-string/jumbo v5, "setFrameRate() : Do NOT set a negative value."

    invoke-static {v4, v5}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iput v3, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    add-int/2addr v3, v1

    const v1, 0x3b9aca00

    div-int/2addr v1, v3

    int-to-long v3, v1

    iput-wide v3, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mFrameRateControlHandler:Lcom/samsung/android/nexus/particle/emitter/FrameController$1;

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FrameController;->mCheckInterval:I

    int-to-long v0, p0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
