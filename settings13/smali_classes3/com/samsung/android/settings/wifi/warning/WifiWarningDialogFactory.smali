.class public abstract Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;
.super Ljava/lang/Object;
.source "WifiWarningDialogFactory.java"


# direct methods
.method public static createDialog(Landroid/content/Intent;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
    .locals 5

    const-string v0, "req_type"

    const/4 v1, -0x1

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "extra_type"

    .line 42
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "friendly_name"

    .line 43
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiWarning"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "friendly name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->isTurnOffMobileHotspotWithoutNan(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    new-instance p0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-object p0

    .line 52
    :cond_1
    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->isTunOffMobileHotspotWithP2p(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    new-instance p0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-object p0

    .line 54
    :cond_2
    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->isStopSharing(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    new-instance p0, Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-object p0

    .line 56
    :cond_3
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->isSharingLite(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    new-instance p0, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-object p0

    .line 58
    :cond_4
    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->isTurnOffMobileHotspotWithNan(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    new-instance p0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithNanDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithNanDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-object p0

    .line 60
    :cond_5
    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->isP2pWithNan(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    new-instance p0, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-object p0

    .line 62
    :cond_6
    invoke-static {v0, p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->isEmptyFragmentDialog(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    new-instance v0, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isEmptyFragmentDialog(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isP2pWithNan(II)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSharingLite(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isStopSharing(II)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTunOffMobileHotspotWithP2p(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTurnOffMobileHotspotWithNan(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTurnOffMobileHotspotWithoutNan(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
