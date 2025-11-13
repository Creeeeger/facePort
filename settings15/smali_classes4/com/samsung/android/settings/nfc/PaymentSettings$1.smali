.class public final Lcom/samsung/android/settings/nfc/PaymentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    const-string v1, "-------------------------------------------"

    const-string v2, "PaymentSettings"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, " mReceiver.onReceive / action : "

    invoke-static {v3, p1, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/PaymentSettings$3;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/PaymentSettings$3;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_0
    return-void
.end method
