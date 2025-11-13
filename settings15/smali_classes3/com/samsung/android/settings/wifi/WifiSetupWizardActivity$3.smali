.class public final Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "WifiSetupWizard"

    const-string p2, "activationShowing PositiveButton onClick"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mainAction(Z)V

    return-void

    :pswitch_0
    const-string p1, "WifiSetupWizard"

    const-string/jumbo p2, "selectNetworkPopUpShowing setNeutralButton"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    const-string p1, "WifiSetupWizard"

    const-string/jumbo p2, "selectNetworkPopUpShowing setPositiveButton"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
