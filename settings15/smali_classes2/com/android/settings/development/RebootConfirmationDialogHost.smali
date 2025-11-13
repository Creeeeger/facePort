.class public interface abstract Lcom/android/settings/development/RebootConfirmationDialogHost;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public onRebootCancelled()V
    .locals 0

    return-void
.end method

.method public onRebootConfirmed(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onRebootDialogDismissed()V
    .locals 0

    return-void
.end method
