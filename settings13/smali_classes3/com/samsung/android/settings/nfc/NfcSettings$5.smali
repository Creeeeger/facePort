.class Lcom/samsung/android/settings/nfc/NfcSettings$5;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 690
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 711
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const-string v0, "nfc_mode_general"

    .line 713
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "mode_card_mode"

    .line 714
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "mode_standard_mode"

    .line 715
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "default_payment_app"

    .line 716
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "toggle_nfc"

    .line 717
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "nfc_secure_settings"

    .line 718
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android_beam_settings"

    .line 721
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportDualSwp()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nfc_payment_sim"

    .line 724
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_1
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 727
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->-$$Nest$sfgetmIconType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "nfc_payment_settings"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 728
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 729
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "secure_nfc_settings_dcm"

    const-string v1, "nfc_payment_settings_jpn"

    const-string v3, "nfc_setting_title"

    const-string v4, "secure_nfc_settings_kdi"

    if-eqz p1, :cond_5

    .line 732
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "nfc_osaifukeitai_settings"

    .line 734
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 737
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 739
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result p1

    if-nez p1, :cond_4

    .line 740
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    :cond_4
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    :goto_0
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 747
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result p1

    if-nez p1, :cond_6

    .line 748
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string p1, "nfc_payment_settings_dcm"

    .line 751
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
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

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android.hardware.nfc"

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 696
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 699
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/android/settings/R$xml;->sec_nfc_settings_jpn:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_settings:I

    :goto_0
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 700
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
