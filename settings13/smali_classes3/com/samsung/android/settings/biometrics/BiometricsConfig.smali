.class public Lcom/samsung/android/settings/biometrics/BiometricsConfig;
.super Ljava/lang/Object;
.source "BiometricsConfig.java"


# direct methods
.method public static isNotSupportBiometricsLockMenu(Landroid/content/Context;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 1

    .line 37
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 38
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 40
    array-length p0, p0

    const-string v0, "BiometricsConfig"

    if-lez p0, :cond_0

    const-string p0, "isSamsungAccountSignedIn() - true"

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isSamsungAccountSignedIn() - false"

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
