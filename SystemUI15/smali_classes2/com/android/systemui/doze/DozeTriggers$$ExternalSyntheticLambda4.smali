.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lcom/android/systemui/doze/DozeMachine$State;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;Lcom/android/systemui/doze/DozeMachine$State;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$2:Lcom/android/systemui/doze/DozeMachine$State;

    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$3:Z

    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$2:Lcom/android/systemui/doze/DozeMachine$State;

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$3:Z

    iget p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;->f$4:I

    check-cast p1, Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "requestPulse - inPocket"

    invoke-virtual {v6, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    goto :goto_2

    :cond_0
    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean p1, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    const/4 v5, 0x1

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    if-eqz p1, :cond_3

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne v7, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const-string p0, "continuePulseRequest - pulse no longer pending, pulse was cancelled before it could start transitioning to pulsing state."

    invoke-virtual {v6, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne p0, v5, :cond_5

    const-string p0, "continuePulseRequest - pulsingBlocked"

    invoke-virtual {v6, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "continuePulseRequest - doze state cannot pulse"

    invoke-virtual {v6, p0, v2}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_6
    :goto_1
    check-cast v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    :goto_2
    return-void
.end method
