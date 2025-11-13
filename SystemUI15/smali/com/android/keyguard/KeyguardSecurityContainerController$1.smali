.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitched()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentUser:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentUser:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reinflateViewFlipper(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_1
    return-void
.end method
