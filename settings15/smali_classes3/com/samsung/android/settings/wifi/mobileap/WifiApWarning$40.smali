.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onDismissCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    const-string p0, "WifiApWarning"

    const-string v0, "onDismissCancelled: Dismiss cancelled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissError()V
    .locals 1

    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    const-string p0, "WifiApWarning"

    const-string v0, "onDismissError: error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 1

    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    const-string p0, "WifiApWarning"

    const-string v0, "onDismissSucceeded: Dismiss success"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
