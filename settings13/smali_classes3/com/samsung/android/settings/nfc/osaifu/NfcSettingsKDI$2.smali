.class Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettingsKDI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive - Action : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[NfcSettingsKDI]"

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->-$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V

    return-void
.end method
