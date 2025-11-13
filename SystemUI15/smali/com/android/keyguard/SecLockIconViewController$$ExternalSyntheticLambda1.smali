.class public final synthetic Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecLockIconViewController;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->onLockIconPressed()V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    const/4 p0, 0x0

    return p0
.end method
