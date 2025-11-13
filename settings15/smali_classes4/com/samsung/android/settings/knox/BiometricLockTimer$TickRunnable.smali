.class public final Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mSetCount:J

.field public final synthetic this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/BiometricLockTimer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    iput-wide p2, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->mSetCount:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimer;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/BiometricLockTimer;->mOnTickListener:Lcom/samsung/android/settings/knox/BiometricLockTimer$OnTickListener;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimer$TickRunnable;->mSetCount:J

    check-cast v0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;

    iget-object p0, v0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$3;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->setDialogMessage(J)V

    :cond_0
    return-void
.end method
