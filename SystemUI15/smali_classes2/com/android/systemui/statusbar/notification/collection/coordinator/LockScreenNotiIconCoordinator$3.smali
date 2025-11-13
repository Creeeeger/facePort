.class Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFaceEnrolledChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onKeyguardDismissAmountChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onKeyguardFadingAwayChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onKeyguardGoingAwayChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onKeyguardShowingChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLaunchTransitionFadingAwayChanged()V
    .locals 0

    return-void
.end method

.method public onPrimaryBouncerShowingChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    return-void
.end method

.method public bridge synthetic onUnlockedChanged()V
    .locals 0

    return-void
.end method
