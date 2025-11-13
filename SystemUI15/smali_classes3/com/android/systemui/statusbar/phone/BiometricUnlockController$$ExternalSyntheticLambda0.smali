.class public final synthetic Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSecLockIconViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/SecLockIconViewController;

    iput-boolean p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBiometricToastViewAnimating:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->consumeTransitionStepOnStartedKeyguardState(Lcom/android/systemui/keyguard/shared/model/TransitionStep;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
