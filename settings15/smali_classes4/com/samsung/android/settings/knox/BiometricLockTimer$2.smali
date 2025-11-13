.class public final Lcom/samsung/android/settings/knox/BiometricLockTimer$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mOnTickListener:Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;

    const-string v0, "KKG::BiometricLockTimerDialogActivity"

    const-string/jumbo v1, "runTimer : onEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mLockTimer:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mOnTickListener:Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "KKG::BiometricLockTimerDialogActivity"

    const-string/jumbo v0, "runTimer : onStop"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
