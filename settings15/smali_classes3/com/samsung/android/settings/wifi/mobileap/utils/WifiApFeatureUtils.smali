.class public abstract Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static is5GhzBandSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isMobileDataUsageSupported(Landroid/content/Context;)Z
    .locals 8

    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    const-string v1, "WifiApFeatureUtils"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "vendor.wifiap.newUX"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo p0, "wifiap newUX force enable "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const-string/jumbo p0, "wifiap newUX force disable "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_2

    return v3

    :cond_2
    const-string/jumbo p0, "ro.kernel.version"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-double v4, p0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "semWifiApDataUsageSupported kernelVersionFloat:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "vendor.wifiap.kernel.datausage"

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_4

    return v3

    :cond_4
    const-string/jumbo p0, "ro.build.version.oneui"

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const v0, 0xc3b5

    if-lt p0, v0, :cond_5

    return v2

    :cond_5
    const-string p0, "SWA"

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/SemCscParser;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOneTimePasswordSupported(Landroid/content/Context;)Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vendor.wifiap.newUX"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "WifiApFeatureUtils"

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "wifiap newUX force enable "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    const-string/jumbo p0, "wifiap newUX force disable "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo p0, "ro.build.version.oneui"

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const v0, 0xc3b5

    if-lt p0, v0, :cond_2

    return v1

    :cond_2
    const-string p0, "SWA"

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/SemCscParser;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOneUIVersion6_0_AtMost()Z
    .locals 3

    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0xeac4

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSAFamilySupportedBasedOnCountry(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isSAFamilySupportedBasedOnCountry()Z

    move-result p0

    const-string v0, "isSAFamilySupportedBasedOnCountry:"

    const-string v1, "WifiApFeatureUtils"

    invoke-static {v0, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static isSAFamilySupportedInSAFamilyDB(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "WifiApFeatureUtils"

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const v2, 0x7f142966

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string p0, "isSAFamilySupportedInSAFamilyDB() - Timeout occurred while waiting for the result"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    const-string v1, "isSAFamilySupportedInSAFamilyDB:"

    invoke-static {v1, v0, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static isSamsungAccountFamilySupported()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/SemCscParser;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    return-void
.end method

.method public static isSatelliteModeOn(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "isSatelliteModeOn:"

    const-string v1, "WifiApFeatureUtils"

    invoke-static {v0, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static isWifiApClientDeviceTypeSupported()Z
    .locals 3

    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0xeac4

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isWifiApLockNetworkSupported()Z
    .locals 3

    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0xeac4

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
