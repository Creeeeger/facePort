.class Lcom/android/keyguard/KeyguardSecurityContainerController$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDevicePolicyManagerStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    return-void
.end method

.method public final onTrustGrantedForCurrentUser(ZZLcom/android/keyguard/TrustGrantFlags;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->access$400(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "KeyguardSecurityContainer"

    const-string p2, "TrustAgent dismissed Keyguard."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    sget-object p3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p1, p2, p0, p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    goto :goto_1

    :cond_1
    iget p1, p3, Lcom/android/keyguard/TrustGrantFlags;->mFlags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/keyguard/TrustGrantFlags;->dismissKeyguardRequested()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    :cond_3
    :goto_1
    return-void
.end method
