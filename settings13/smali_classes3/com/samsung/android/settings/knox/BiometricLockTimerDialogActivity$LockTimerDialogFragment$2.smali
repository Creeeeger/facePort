.class Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$2;
.super Ljava/lang/Object;
.source "BiometricLockTimerDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$2;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 116
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 117
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment$2;->this$0:Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0
.end method
