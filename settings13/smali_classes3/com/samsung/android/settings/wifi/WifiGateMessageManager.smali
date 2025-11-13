.class public Lcom/samsung/android/settings/wifi/WifiGateMessageManager;
.super Ljava/lang/Object;
.source "WifiGateMessageManager.java"


# instance fields
.field private mPreviousState:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleStateChangedForGateMessage(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_2

    .line 56
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "GATE"

    if-ne p1, v0, :cond_0

    const-string v0, "<GATE-M> WIFI_STATUS_CONNECTED </GATE-M>"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    const-string v0, "<GATE-M> WIFI_STATUS_DISCONNECTED </GATE-M>"

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    :cond_2
    return-void
.end method

.method public handleWifiStateChangedForGateMassage(I)V
    .locals 1

    const-string p0, "GATE"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "<GATE-M> WIFI_ON </GATE-M>"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "<GATE-M> WIFI_OFF </GATE-M>"

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "<GATE-M> WIFI_DISABLING </GATE-M>"

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
