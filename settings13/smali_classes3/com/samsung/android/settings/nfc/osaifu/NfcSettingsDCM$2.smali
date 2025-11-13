.class Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettingsDCM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->-$$Nest$fgetmNfcSettingsData(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->-$$Nest$fgetmNfcSettingsData(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive - Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[NfcSettingsDCM]"

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    .line 296
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_0

    const-string v2, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    .line 297
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 298
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "responseType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 299
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "efLockUser"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v6, "efLockRemote"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UIM lock state is updated. Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", User Lock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Remote Lock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v4, :cond_1

    if-nez p1, :cond_5

    :cond_1
    if-nez p2, :cond_2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne p2, v5, :cond_3

    if-ne v2, v5, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-ne v2, v5, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_5

    if-nez v2, :cond_5

    const/4 v1, 0x2

    .line 317
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->-$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;II)V

    return-void
.end method
