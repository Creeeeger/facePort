.class Lcom/samsung/android/settings/nfc/PaymentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 103
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    const-string v1, "-------------------------------------------"

    const-string v2, "PaymentSettings"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mReceiver.onReceive / action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 105
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-$$Nest$fgetmPaymentBackend(Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentBackend;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->ActionRetry()V

    goto :goto_1

    :cond_3
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 p1, -0x1

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    .line 112
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x5

    if-ne p1, p2, :cond_9

    .line 117
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    const-string v0, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "com.sec.android.nfc.cardemulation.ACTION_PAYMENT_DEFAULT_VALIDITY_VERIFIED"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-$$Nest$monPaymentDefaultValidityVerified(Lcom/samsung/android/settings/nfc/PaymentSettings;Landroid/content/Intent;)V

    goto :goto_1

    .line 121
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_1
    return-void
.end method
