.class public final synthetic Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    :goto_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eq v4, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutMargins(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Integer;->max(II)I

    move-result p0

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, v2, v2, v2, p0}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
