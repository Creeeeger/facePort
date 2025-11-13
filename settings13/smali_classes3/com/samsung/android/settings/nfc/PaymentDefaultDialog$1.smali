.class Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 67
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentDefaultDialog"

    const-string v1, "-------------------------------------------"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mReceiver.onReceive / action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.sec.android.nfc.cardemulation.ACTION_PAYMENT_DEFAULT_VALIDITY_VERIFIED"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->-$$Nest$monPaymentDefaultValidityVerified(Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
