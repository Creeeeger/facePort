.class public final Lcom/samsung/android/settings/nfc/OtherSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/OtherSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz p2, :cond_0

    const-string p2, "mReceiver.onReceive / action : "

    const-string v0, "OtherSettings"

    invoke-static {p2, p1, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mUIHandler:Lcom/samsung/android/settings/nfc/OtherSettings$3;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
