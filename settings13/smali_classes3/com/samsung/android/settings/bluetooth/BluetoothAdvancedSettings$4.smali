.class Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "BluetoothAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 764
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 826
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 827
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastPreferenceController;

    const-string v1, "key_bluetooth_cast"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "persist.bluetooth.enableinbandringing"

    .line 784
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 786
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNonIndexableKeys:: isSupportIBR - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , isVoiceCapable - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , isSupportSoftphone - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothAdvancedSettings"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    .line 789
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "key_bluetooth_ibr"

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "Softphone"

    .line 791
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_bluetooth_cast"

    .line 796
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$smisUseDeltaOptionMenu()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "key_bluetooth_rename"

    .line 800
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_bluetooth_received_files"

    .line 801
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$sfgetCSC_COMMON_CHINA_NAL_SECURITY_TYPE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChinaNalSecurity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "key_bluetooth_ask_to_use"

    .line 805
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$smisDisableSyncOptionMenu(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "key_bluetooth_cloud_switch"

    const-string v2, "key_bluetooth_cloud_none_switch"

    if-eqz v0, :cond_5

    .line 809
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    :cond_5
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 814
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 816
    :cond_6
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 768
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_advanced_settings:I

    .line 769
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 770
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_advanced_settings_jpn:I

    goto :goto_0

    :cond_0
    const-string p2, "SamsungCloudBrandType"

    .line 771
    invoke-static {p2}, Lcom/samsung/android/settings/account/AccountUtils;->getSamsungCloudFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NA_NOBRAND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 772
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_advanced_settings_vzw:I

    .line 775
    :cond_1
    :goto_0
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 776
    iput p0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/provider/SearchIndexableResource;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    .line 777
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
