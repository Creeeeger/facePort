.class Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;
.super Ljava/lang/Object;
.source "BiometricLockTimerDialogActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->runTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    const-string v0, "KKG::BiometricLockTimerDialogActivity"

    const-string v1, "runTimer : onEnd"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->-$$Nest$fputmLockTimer(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;Lcom/samsung/android/settings/knox/BiometricLockTimer;)V

    .line 170
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string p0, "KKG::BiometricLockTimerDialogActivity"

    const-string v0, "runTimer : onStop"

    .line 153
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->-$$Nest$msetDialogMessage(Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;J)V

    :cond_0
    return-void
.end method
