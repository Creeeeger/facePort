.class public Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;
.super Ljava/lang/Object;
.source "SemWifiApAutoHotspotHelper.java"


# static fields
.field public static final blacklist KEY_CAN_AUTO_HOTSPOT_BE_ENABLED:Ljava/lang/String; = "key_can_auto_hotspot_be_enabled"

.field private static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist VALUE_FALSE:Ljava/lang/String; = "0"

.field public static final blacklist VALUE_TRUE:Ljava/lang/String; = "1"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getIfAutoHotspotCanBeEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 26
    .local v0, "mSemWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->canAutoHotspotBeEnabled()Z

    move-result v1

    .line 27
    .local v1, "canAutoHotspotBeEnabled":Z
    invoke-static {p0, v1}, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;->setIfAutoHotspotCanBeEnabled(Landroid/content/Context;Z)V

    .line 28
    const-string v2, "key_can_auto_hotspot_be_enabled"

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "valueIfAutoHotspotCanBeEnabled":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIfAutoHotspotCanBeEnabled() - Getting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    const/4 v3, 0x1

    return v3

    .line 33
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private static blacklist setIfAutoHotspotCanBeEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ifAutoHotspotCanBeEnabled"    # Z

    .line 38
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApAutoHotspotHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIfAutoHotspotCanBeEnabled() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "key_can_auto_hotspot_be_enabled"

    if-eqz p1, :cond_0

    .line 40
    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void
.end method
