.class public final Lcom/samsung/android/settings/nfc/NfcSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$1;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mEUiccReceiver : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NfcSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$1;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo p2, "showNfcEuiccMenu"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$1;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->updatePaymentSim()V

    :cond_0
    return-void
.end method
