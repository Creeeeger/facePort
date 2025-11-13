.class public final synthetic Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    packed-switch p2, :pswitch_data_0

    sget p2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    return-void

    :pswitch_0
    sget p2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    return-void

    :pswitch_1
    sget p2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    return-void

    :pswitch_2
    sget p2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetCurrentNetwork$1()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_4
    sget p2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetCurrentNetwork$1()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
