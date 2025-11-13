.class public Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BiometricLockTimerDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/knox/BiometricLockTimerDialogActivity$LockTimerDialogFragment;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "LockTimerDialogFragment"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
