.class public interface abstract Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# virtual methods
.method public abstract canFaceAuthRun()Z
.end method

.method public abstract getAuthenticationStatus()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract isAuthenticated()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isBypassEnabled()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract isFaceAuthEnabledAndEnrolled()Z
.end method

.method public abstract isFaceAuthStrong()Z
.end method

.method public abstract isLockedOut()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract onAccessibilityAction()V
.end method

.method public abstract onDeviceLifted()V
.end method

.method public abstract onNotificationPanelClicked()V
.end method

.method public abstract onPrimaryBouncerUserInput()V
.end method

.method public abstract onUdfpsSensorTouched()V
.end method

.method public abstract onWalletLaunched()V
.end method
