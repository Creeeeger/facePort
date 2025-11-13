.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final synthetic val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field public final synthetic val$passiveAuthInterrupt:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$passiveAuthInterrupt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPulseFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v2}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->setPulsing(Z)V

    return-void
.end method

.method public final onPulseStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->setPulsing(Z)V

    return-void
.end method

.method public final setPulsing(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setPulsing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0, p1}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->setPulsing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mPulsing:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mPulsing:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onPulsingChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$passiveAuthInterrupt:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logAuthInterruptDetected(Z)V

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    if-ne v2, p1, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    sget-object v2, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    sget-object v2, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->WAKE:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v3, "onReach"

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPulsing:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    :cond_4
    return-void
.end method
