.class public Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoUtils;
.super Ljava/lang/Object;
.source "AndroidAutoUtils.java"


# direct methods
.method public static isAndroidAutoInstalledEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.google.android.projection.gearhead"

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    if-eq v2, p0, :cond_1

    const/4 p0, 0x3

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method
