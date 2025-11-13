.class public final Lcom/android/keyguard/SecLockIconViewController$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$7;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$7;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iput-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateKeyguardShowing()V

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams(I)V

    return-void
.end method

.method public final onUnlockedChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$7;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    iget-object v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iput-boolean v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateKeyguardShowing()V

    iget-boolean v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    :cond_0
    return-void
.end method
