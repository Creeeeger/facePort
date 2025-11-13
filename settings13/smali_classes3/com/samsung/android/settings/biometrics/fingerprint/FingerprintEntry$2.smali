.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "FingerprintEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 520
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 522
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v1, "set_screen_lock"

    .line 525
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "check_added_fingerprints"

    .line 526
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v1

    .line 530
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v2

    if-lt v1, v2, :cond_1

    const-string v1, "key_fingerprint_add"

    .line 531
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "com.sec.android.app.sbrowser"

    .line 535
    invoke-static {p1, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "support_web_signin"

    .line 537
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v0, :cond_5

    .line 541
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 542
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "support_samsung_account"

    .line 543
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_7

    .line 547
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "set_always_on"

    .line 548
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v0, :cond_9

    .line 552
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    const-string p1, "screen_off_icon_aod"

    .line 553
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v0, :cond_b

    .line 557
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIcon()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    const-string p1, "screen_off_icon"

    .line 558
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-nez v0, :cond_d

    .line 562
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFasterRecognition()Z

    move-result p1

    if-nez p1, :cond_e

    :cond_d
    const-string p1, "fast_recognition"

    .line 563
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez v0, :cond_f

    .line 567
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisplaySensor()Z

    move-result p1

    if-nez p1, :cond_10

    :cond_f
    const-string p1, "key_fingerprint_about_fingerprints"

    .line 568
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-nez v0, :cond_11

    .line 572
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintEffect()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    const-string p1, "fingerprint_effect"

    .line 573
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
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

    .line 591
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 594
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string p1, "support_samsung_account"

    .line 596
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 597
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_samsung_account_jp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 598
    sget p1, Lcom/android/settings/R$string;->keywords_biometrics_and_security_settings:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string p1, "com.android.settings"

    .line 599
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const-string p1, "com.samsung.android.settings.biometrics.fingerprint.FingerprintEntry"

    .line 600
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const-string p1, "android.intent.action.MAIN"

    .line 601
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 602
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
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

    .line 505
    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-string p1, "android.intent.action.MAIN"

    .line 509
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    const-string p1, "com.android.settings"

    .line 510
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    const-string p1, "com.samsung.android.settings.biometrics.fingerprint.FingerprintEntry"

    .line 511
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 512
    sget p1, Lcom/android/settings/R$xml;->sec_fingerprint:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 514
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 581
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 585
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
