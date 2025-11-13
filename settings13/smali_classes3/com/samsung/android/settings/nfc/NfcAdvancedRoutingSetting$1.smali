.class Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcAdvancedRoutingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    .line 68
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method
