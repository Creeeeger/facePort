.class Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$7;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecurityAndPrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 755
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 758
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 759
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->isDeviceProtectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_app_security"

    .line 760
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->isDeviceProtectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_device_protection"

    .line 763
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key_google_play_protect"

    .line 766
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "key_google_acc_checkup"

    .line 767
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSamsungAccountSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "key_samsung_acc_checkup"

    .line 770
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSecurityUpdateSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGPSuSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "key_updates"

    .line 774
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSecurityUpdateSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "key_security_update"

    .line 777
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGPSuSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "key_google_play_system_update"

    .line 780
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_6
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFMMSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "key_offline_finding"

    if-eqz v0, :cond_7

    .line 783
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isOfflineFindingSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 784
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v0, "key_find_my_mobile"

    .line 787
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "key_allow_this_phone_to_be_found"

    .line 788
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_8
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFingerPrintSupportedModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "key_fingerprints"

    .line 792
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v0, "security_status_find_device"

    .line 794
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isMDMEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "key_screen_lock_type"

    .line 797
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "key_lock_screen"

    .line 798
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 806
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 809
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFMMSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_find_my_mobile"

    .line 810
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 811
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->isFMMMetaDataExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    sget v0, Lcom/android/settings/R$string;->smartthings_find_title:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 813
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    goto :goto_0

    .line 815
    :cond_0
    sget v0, Lcom/android/settings/R$string;->find_my_mobile_title:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 816
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 819
    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
