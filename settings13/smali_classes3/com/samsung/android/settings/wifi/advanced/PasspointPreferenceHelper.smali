.class public interface abstract Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;
.super Ljava/lang/Object;
.source "PasspointPreferenceHelper.java"


# virtual methods
.method public getDetailAvailableStatus(Landroid/net/wifi/WifiManager;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    const/4 p1, 0x5

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const-string v0, "hide"

    .line 56
    invoke-static {p2, p3, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "grayout"

    .line 58
    invoke-static {p2, p3, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p0

    :goto_1
    return p1
.end method

.method public getReceiver(Landroidx/preference/Preference;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;-><init>(Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;Landroidx/preference/Preference;Ljava/lang/String;)V

    return-object v0
.end method

.method public isNeedToGrayOut(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "grayout"

    .line 35
    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
