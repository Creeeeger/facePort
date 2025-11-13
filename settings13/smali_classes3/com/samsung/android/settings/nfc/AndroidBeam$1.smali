.class Lcom/samsung/android/settings/nfc/AndroidBeam$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 86
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v0, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    .line 88
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_5

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    .line 92
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 93
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    goto :goto_0

    :cond_3
    const-string v0, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "com.samsung.nfc.extra.ABEAM_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$msetSwitchStatus(Lcom/samsung/android/settings/nfc/AndroidBeam;ZZ)V

    goto :goto_0

    .line 103
    :cond_4
    sget-object p2, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    :cond_5
    :goto_0
    return-void
.end method
