.class public abstract Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static misAppInstalled:I = -0x1


# direct methods
.method public static getDBInt(Landroid/content/ContentResolver;)I
    .locals 6

    const-string/jumbo v0, "nearby_scanning_enabled"

    const/4 v1, -0x1

    const-string v2, "NearbyDeviceScanningUtil"

    if-nez p0, :cond_0

    const-string p0, "Context is null"

    invoke-static {v2, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SettingNotFoundException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public static isBeaconManagerInstall(Landroid/content/Context;)Z
    .locals 6

    const-string v0, ">=40"

    sget v1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->misAppInstalled:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "NearbyDeviceScanningUtil"

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "com.samsung.android.beaconmanager"

    const-string v2, " installed -  But version  "

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x28

    if-lt p0, v1, :cond_0

    move p0, v5

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v3

    :goto_0
    const-string v0, "Installed - com.samsung.android.beaconmanager"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    const-string p0, "Not installed - com.samsung.android.beaconmanager"

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    :goto_1
    sput p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->misAppInstalled:I

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isBeaconManagerInstall - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->misAppInstalled:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->misAppInstalled:I

    if-ne p0, v5, :cond_2

    move v3, v5

    :cond_2
    return v3
.end method

.method public static setDBInt(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "NearbyDeviceScanningUtil"

    if-nez p0, :cond_0

    const-string p0, "Context is null"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    if-eq v2, p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setDBInt : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "nearby_scanning_enabled"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.nearbyscanning"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.nearbyscanning_with_permission"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.beaconmanager.permission.START_BLE_PROXY"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo p0, "sendBroadcast"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static settingslogging(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v1, "on 1000)"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "off 0)"

    :goto_0
    const-string v2, "SwitchBar, send Event Log : 3701, on/off ("

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearbyDeviceScanningUtil"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v0, :cond_1

    const-wide/16 v0, 0x3e8

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    const/16 p0, 0xe74

    const/16 v2, 0xe75

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
