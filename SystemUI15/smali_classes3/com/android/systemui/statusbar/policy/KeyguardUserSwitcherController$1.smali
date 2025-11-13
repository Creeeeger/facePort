.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDlsViewModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDynamicLockMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatevisibility()V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 2

    const-string v0, "onKeyguardVisibilityChanged "

    const-string v1, "KeyguardUserSwitcherController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->refreshUserOrder()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatevisibility()V

    :cond_1
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 0

    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatevisibility()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    return-void
.end method
