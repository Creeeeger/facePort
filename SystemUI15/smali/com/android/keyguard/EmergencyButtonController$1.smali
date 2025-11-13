.class Lcom/android/keyguard/EmergencyButtonController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardShowing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method public final onOfflineStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method public final onPhoneStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method public final onRefreshCarrierInfo(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p3, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSimState:I

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void
.end method
