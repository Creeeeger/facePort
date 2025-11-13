.class Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$1;
.super Ljava/lang/Object;
.source "BiometricLockTimerDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$1;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
