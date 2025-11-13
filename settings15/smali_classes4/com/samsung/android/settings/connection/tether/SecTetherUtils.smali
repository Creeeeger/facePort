.class public abstract Lcom/samsung/android/settings/connection/tether/SecTetherUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static hasUserRestriction(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string/jumbo v0, "no_config_tethering"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasUserRestriction : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecTetherUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isAvailableTetherMenu(Landroid/content/Context;)Z
    .locals 13

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "AIO"

    const/4 v4, 0x0

    const-string v5, "SecTetherUtils"

    if-nez v0, :cond_f

    sget-object v6, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_7

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherUtils;->hasUserRestriction(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v1, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p0}, Landroid/net/TetheringManager;->isTetheringSupported()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isTetheringSupported : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->isTetheringSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_e

    iget-object p0, v1, Lcom/samsung/android/settings/connection/tether/SecTetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    sget v0, Lcom/samsung/android/settings/connection/ConnectionsUtils;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p0

    array-length v0, v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    array-length v1, v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    array-length p0, p0

    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_3

    :cond_5
    move p0, v4

    :goto_3
    const-string/jumbo v3, "persist.sys.tether_data"

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v7, 0x3

    if-ge v3, v7, :cond_6

    move v0, v4

    :cond_6
    const/4 v7, 0x2

    if-ge v3, v7, :cond_7

    move p0, v4

    :cond_7
    const-string/jumbo v7, "persist.sys.tether_data_usb"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "persist.sys.tether_data_bt"

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "persist.sys.tether_data_wifi"

    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v7, v6, :cond_8

    if-ne v8, v6, :cond_8

    if-eq v9, v6, :cond_c

    :cond_8
    if-lez v7, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_4
    if-lez v8, :cond_a

    move p0, v2

    goto :goto_5

    :cond_a
    move p0, v4

    :goto_5
    if-lez v9, :cond_b

    move v1, v2

    goto :goto_6

    :cond_b
    move v1, v4

    :cond_c
    :goto_6
    const-string/jumbo v10, "tetheredData : "

    const-string/jumbo v11, "tetheredDataUsb :"

    const-string/jumbo v12, "tetheredDataBluetooth :"

    invoke-static {v10, v11, v3, v7, v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " tetheredDataHotspot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ConnectionsUtils"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v6, :cond_d

    if-ne v7, v6, :cond_d

    if-ne v8, v6, :cond_d

    if-ne v9, v6, :cond_d

    move p0, v4

    move v0, p0

    move v1, v0

    :cond_d
    if-nez v1, :cond_e

    if-nez v0, :cond_e

    if-nez p0, :cond_e

    const-string p0, "SPR Concept"

    invoke-static {v5, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_e
    return v2

    :cond_f
    :goto_7
    const-string p0, "mIsSecondaryUser: "

    const-string v1, " nonSupportTethering: "

    invoke-static {p0, v1, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    move v2, v4

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->isProvisioningNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070125

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    array-length p0, p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method
