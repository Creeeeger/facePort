.class Lcom/samsung/android/settings/nfc/NfcSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$1;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$1;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->-$$Nest$mupdatePaymentSim(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    :cond_0
    return-void
.end method
