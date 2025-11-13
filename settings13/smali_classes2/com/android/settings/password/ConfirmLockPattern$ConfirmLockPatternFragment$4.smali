.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method public static synthetic $r8$lambda$fmb-aizMFh2l3zXdbD3HWX7mj5M(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->lambda$startVerifyPattern$0(ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInternalActivity(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    return p0
.end method

.method private synthetic lambda$startVerifyPattern$0(ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)V

    .line 849
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v1, v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 853
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v1

    const-string p1, "gk_pw_handle"

    .line 852
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p1

    const-string p5, "hw_auth_token"

    .line 855
    invoke-virtual {p2, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_0
    const-string/jumbo p1, "password"

    .line 863
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 867
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p6, p4}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method private startCheckPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V
    .locals 8

    .line 881
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 883
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v7, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$monPatternChecked(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V

    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 888
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-static {v2, p1, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)V

    return-void
.end method

.method private startVerifyPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V
    .locals 9

    .line 844
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v7, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 845
    iget v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 846
    new-instance v8, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 870
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    if-ne v7, v0, :cond_0

    .line 871
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p2, p1, v0, p3, v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    goto :goto_0

    .line 874
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p2, p1, v0, p3, v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmLockPatternView(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmPendingLockCheck(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmDisappearing(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmLockPatternView(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 811
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 813
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fputmPattern(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/internal/widget/LockscreenCredential;)V

    .line 817
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 818
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v3, v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnGatekeeperPassword:Z

    if-eqz v3, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 820
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V

    return-void

    .line 824
    :cond_1
    iget-boolean v2, v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForceVerifyPath:Z

    if-eqz v2, :cond_3

    .line 825
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V

    return-void

    .line 834
    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {p1, v1, v0, v1, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void

    .line 830
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startCheckPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmLockPatternView(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 792
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmLockPatternView(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
