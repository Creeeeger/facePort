.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ImeiInformation.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static final SUPPORT_ERI_VERSION:Z

.field private static final SUPPORT_IMEI_SV:Z

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final ZERO_EIGHT:Ljava/lang/String;

.field private final ZERO_FIVE:Ljava/lang/String;

.field private final ZERO_FOUR:Ljava/lang/String;

.field private final ZERO_NINE:Ljava/lang/String;

.field private final ZERO_ONE:Ljava/lang/String;

.field private final ZERO_SEVEN:Ljava/lang/String;

.field private final ZERO_SIX:Ljava/lang/String;

.field private final ZERO_THREE:Ljava/lang/String;

.field private final ZERO_TWO:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetMinNumberTitleText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getMinNumberTitleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetNewKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsupportEriVersion()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportEriVersion()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smsupportImeiSV()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportImeiSV()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smsupportMeid(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportMeid(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsupportMinNumber(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportMinNumber(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsupportPrlVersion(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportPrlVersion(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SUPPORT_ERI_VERSION:Z

    .line 78
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SUPPORT_IMEI_SV:Z

    .line 82
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->sSalesCode:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "0"

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_ONE:Ljava/lang/String;

    const-string v0, "00"

    .line 66
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_TWO:Ljava/lang/String;

    const-string v0, "000"

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_THREE:Ljava/lang/String;

    const-string v0, "0000"

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_FOUR:Ljava/lang/String;

    const-string v0, "00000"

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_FIVE:Ljava/lang/String;

    const-string v0, "000000"

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_SIX:Ljava/lang/String;

    const-string v0, "0000000"

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_SEVEN:Ljava/lang/String;

    const-string v0, "00000000"

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_EIGHT:Ljava/lang/String;

    const-string v0, "000000000"

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->ZERO_NINE:Ljava/lang/String;

    return-void
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 589
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 594
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 596
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x2

    .line 470
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "0"

    const-string v5, "00"

    if-eq v2, v3, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 487
    :pswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 490
    :pswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string p0, "000"

    .line 493
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string p0, "0000"

    .line 496
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string p0, "00000"

    .line 499
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string p0, "000000"

    .line 502
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string p0, "0000000"

    .line 505
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9

    const/4 p0, 0x0

    const/16 v0, 0x8

    .line 520
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0"

    const-string v3, "00"

    const-string v4, "000"

    const-string v5, "0000"

    const-string v6, "00000"

    const-string v7, "000000"

    const-string v8, "0000000"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 526
    :pswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 529
    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 532
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 535
    :pswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 538
    :pswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 541
    :pswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 544
    :pswitch_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    const-string v1, "00000000"

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_8
    const-string v1, "000000000"

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    .line 558
    :pswitch_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 561
    :pswitch_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 564
    :pswitch_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 567
    :pswitch_c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 570
    :pswitch_d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 573
    :pswitch_e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 576
    :pswitch_f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private enableImeiBarcode()V
    .locals 2

    const-string v0, "imei"

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 690
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 691
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$2;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private getEriVersionSummaryText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "ril.eri_ver_1"

    .line 424
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 428
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "ERI : <unknown>"

    .line 431
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getImeiSVSummaryText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 751
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 752
    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 754
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 755
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 757
    :cond_0
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 761
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getImeiSummaryText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 678
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 679
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getMeidSummaryText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 610
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->sSalesCode:Ljava/lang/String;

    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ImeiInformation"

    if-nez v2, :cond_6

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->sSalesCode:Ljava/lang/String;

    const-string v4, "VPP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->sSalesCode:Ljava/lang/String;

    .line 613
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isMetroPCS(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 614
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 620
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 621
    invoke-virtual {v2, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 623
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 624
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 627
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SetSummary - getDeviceId"

    .line 629
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p2

    .line 632
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dec:"

    .line 634
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p0, "\nHex:0x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v2, "SetSummary - getMeid"

    .line 638
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p2

    .line 641
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaOpen()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "SetSummary - getImei"

    .line 642
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 644
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    .line 645
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_4

    .line 646
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p2, p0

    .line 653
    :cond_4
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    return-object p2

    :cond_6
    :goto_1
    const-string p0, "SetSummary - Default"

    .line 615
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getMinNumberSummaryText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 335
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 336
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 338
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 339
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 342
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static getMinNumberTitleText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_msid_enable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->status_msid_number:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->status_min_number:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNewKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPrlVersionSummaryText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 382
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 383
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 385
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 386
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 387
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 389
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 734
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 737
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 739
    new-instance v1, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    const/4 v1, 0x0

    .line 740
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method private initPreferenceScreen()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 193
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSupportFeatureHideSimTab(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImeiInformation"

    const-string v3, "Hide IMEI_Info for Opportunistic subscription"

    .line 196
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :cond_0
    sget v2, Lcom/android/settings/R$xml;->sec_device_info_status_imei:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 202
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setMinNumber(I)V

    .line 203
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setPrlVersion(I)V

    .line 204
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setEriVersion(I)V

    .line 205
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setMeid(I)V

    .line 206
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setImei(I)V

    .line 207
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setImeiSV(I)V

    .line 209
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->updatePreference(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEriVersion(I)V
    .locals 1

    .line 440
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportEriVersion()Z

    move-result p1

    const-string v0, "eri_version"

    if-nez p1, :cond_0

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getEriVersionSummaryText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setImei(I)V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getImeiSummaryText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "imei"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->FEATURE_STATUS_INFO_IMEI_BARCODE:Z

    if-eqz p1, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->enableImeiBarcode()V

    :cond_0
    return-void
.end method

.method private setImeiSV(I)V
    .locals 2

    .line 769
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportImeiSV()Z

    move-result v0

    const-string v1, "imei_sv"

    if-nez v0, :cond_0

    .line 770
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getImeiSVSummaryText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMeid(I)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportMeid(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "meid_number"

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getMeidSummaryText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMinNumber(I)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportMinNumber(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "min_number"

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getMinNumberTitleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setTitleText(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getMinNumberSummaryText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPrlVersion(I)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->supportPrlVersion(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "prl_version"

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getPrlVersionSummaryText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 293
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 294
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    new-instance p3, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p2

    const/4 p3, 0x0

    .line 296
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-interface {p0, p2, p3, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p2, p0

    .line 299
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private setTitleText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static supportEriVersion()Z
    .locals 1

    .line 416
    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SUPPORT_ERI_VERSION:Z

    return v0
.end method

.method private static supportImeiSV()Z
    .locals 1

    .line 727
    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SUPPORT_IMEI_SV:Z

    return v0
.end method

.method private static supportMeid(Landroid/content/Context;I)Z
    .locals 0

    .line 458
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private static supportMinNumber(Landroid/content/Context;I)Z
    .locals 0

    .line 314
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static supportPrlVersion(Landroid/content/Context;I)Z
    .locals 0

    .line 372
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePreference(I)V
    .locals 7

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 226
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiTitleSuffix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 228
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 229
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 231
    invoke-static {v5, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isEqualsDisabledESimSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 174
    sget p0, Lcom/android/settings/R$string;->imei_information_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 169
    const-class p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x29

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_about_phone"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->initPreferenceScreen()V

    return-void
.end method
