.class public final Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "WifiSetupWizard"

    const-string/jumbo p1, "selectNetworkPopUpShowing setNegativeButton"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
