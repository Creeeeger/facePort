.class public final Lcom/android/systemui/statusbar/phone/DozeScrimController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method public final onDisplayBlanked()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string v0, "onDisplayBlanked - not dozing"

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    :cond_1
    return-void
.end method

.method public final onFinished()V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const-string/jumbo v3, "scrimCallback-onFinished"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/doze/DozeLog;->tracePulseEvent(ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const-string v2, "doze.pulse.duration.visible"

    const v3, 0x7f0b004d

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt$1(ILjava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
