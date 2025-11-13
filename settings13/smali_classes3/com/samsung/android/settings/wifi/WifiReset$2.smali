.class Lcom/samsung/android/settings/wifi/WifiReset$2;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 2

    const-string v0, "WifiReset"

    const-string v1, "Reset Wi-Fi Settings"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiReset;->reset(Landroid/content/Context;)V

    .line 134
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiReset$2$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/WifiReset$2$1;-><init>(Lcom/samsung/android/settings/wifi/WifiReset$2;Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
