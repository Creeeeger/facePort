.class Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettingsRKT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 286
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;

    invoke-static {p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->-$$Nest$fgetmNfcSettingsData(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result p2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive - Action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[NfcSettingsRKT]"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->-$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;I)V

    return-void
.end method
