.class public final Lcom/android/settings/nfc/BaseNfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/nfc/BaseNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/BaseNfcEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler$1;->this$0:Lcom/android/settings/nfc/BaseNfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler$1;->this$0:Lcom/android/settings/nfc/BaseNfcEnabler;

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;->handleNfcStateChanged(I)V

    :cond_0
    return-void
.end method
