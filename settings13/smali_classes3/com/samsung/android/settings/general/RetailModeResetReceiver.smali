.class public Lcom/samsung/android/settings/general/RetailModeResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetailModeResetReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startResetSettings(Landroid/content/Context;)V
    .locals 1

    const-string p0, "RetailModeResetReceiver"

    const-string v0, "startResetSettings"

    .line 31
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetSettingsInternal(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "RetailModeResetReceiver"

    if-nez v1, :cond_0

    const-string p0, "Retail mode is not enabled."

    .line 20
    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceived, Action name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/general/RetailModeResetReceiver;->startResetSettings(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
