.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;IZZFFZZ[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$3:Z

    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$4:F

    iput p6, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$5:F

    iput-boolean p7, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$6:Z

    iput-boolean p8, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$7:Z

    iput-object p9, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$8:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$2:Z

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$3:Z

    iget v12, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$4:F

    iget v13, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$5:F

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$6:Z

    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$7:Z

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->f$8:[F

    check-cast p1, Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "prox reporting near"

    invoke-virtual {v6, v1, p0}, Lcom/android/systemui/doze/DozeLog;->traceSensorEventDropped(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x0

    iget-object v7, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v8, 0x1

    if-nez v2, :cond_6

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    iget-object p0, v0, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz p0, :cond_2

    const-string p0, "keyguard occluded"

    invoke-virtual {v6, v1, p0}, Lcom/android/systemui/doze/DozeLog;->traceSensorEventDropped(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    goto/16 :goto_3

    :cond_3
    if-eqz v5, :cond_5

    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/systemui/doze/DozeTriggers;->canPulse(Lcom/android/systemui/doze/DozeMachine$State;Z)Z

    move-result v1

    const-string v2, "DozeLog"

    if-eqz v1, :cond_4

    iget-object v1, v6, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, v1, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v4, "updfsLongPress - setting aodInterruptRunnable to run when the display is on"

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v12, v13, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/doze/DozeTriggers;FF[F)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda6;

    goto :goto_0

    :cond_4
    iget-object p0, v6, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v3, "udfpsLongPress - Not sending aodInterrupt. Unsupported doze state."

    invoke-virtual {p0, v2, v1, v3, p1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/16 p0, 0xa

    invoke-virtual {v0, p0, v8, p1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    goto/16 :goto_3

    :cond_5
    check-cast v7, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->extendPulse(I)V

    goto/16 :goto_3

    :cond_6
    :goto_1
    move-object p0, v7

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    cmpg-float v3, v12, v2

    if-ltz v3, :cond_9

    cmpg-float v3, v13, v2

    if-gez v3, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    sub-float v4, v12, v4

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float v3, v13, v3

    cmpg-float v5, v2, v4

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-wide v4, v2

    move-wide v6, v2

    move v9, v12

    move v10, v13

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    const/4 v8, 0x1

    move-wide v4, v2

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_8
    new-instance v2, Landroid/graphics/Point;

    float-to-int v3, v12

    float-to-int v4, v13

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    :goto_3
    return-void
.end method
