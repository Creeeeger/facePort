.class public Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;
.super Ljava/lang/Object;
.source "WifiDevicePolicyManager.java"


# direct methods
.method public static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 158
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    .line 156
    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static isAllowedToChangeUserPolicy(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "getAllowUserPolicyChanges"

    const/4 v2, 0x0

    const-string v3, "false"

    .line 105
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string v0, "isAllowedToChangeUserPolicy false"

    .line 107
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "getPasswordHidden"

    const/4 v2, 0x0

    const-string v3, "true"

    .line 81
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string v0, "isAllowedToShowPasswordHiddenView false"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllowedToShowRetryDialog(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "getPromptCredentialsEnabled"

    const/4 v2, 0x0

    const-string v3, "false"

    .line 117
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string v0, "isAllowedToShowRetryDialog false"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllowedWifiDirectEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isWifiDirectAllowed"

    const/4 v2, 0x0

    const-string v3, "false"

    .line 129
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string v0, "isAllowedWifiDirectEnabled false"

    .line 131
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllowedWifiEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isWifiEnabled"

    const/4 v2, 0x0

    const-string v3, "false"

    .line 56
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string v0, "isAllowedWifiEnabled false"

    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllowedWifiScanning(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "isWifiScanningAllowed"

    const/4 v2, 0x0

    const-string v3, "false"

    .line 141
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string v0, "isAllowedWifiScanning false"

    .line 143
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAllowedWifiStateChange(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "isWifiStateChangeAllowed"

    const/4 v2, 0x0

    const-string v3, "false"

    .line 69
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string v0, "isAllowedWifiStateChange false"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEnterpriseKnoxSsid(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "isEnterpriseNetwork"

    const-string v2, "true"

    .line 93
    invoke-static {p0, v0, v1, p1, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiDevicePolicyManager"

    const-string p1, "isEnterpriseKnoxSsid true"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
