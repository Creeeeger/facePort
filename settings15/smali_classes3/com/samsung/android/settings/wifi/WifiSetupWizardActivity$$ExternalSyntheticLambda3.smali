.class public final synthetic Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->forgetCurrentNetwork()V

    const-string p0, "WifiSetupWizard"

    const-string p1, "Network Warning Dialog for FRP is dismissed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
