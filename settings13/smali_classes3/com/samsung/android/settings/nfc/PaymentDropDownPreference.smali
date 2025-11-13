.class public Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.super Landroidx/preference/SecPreference;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;,
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;,
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;
    }
.end annotation


# instance fields
.field private entries:[Ljava/lang/CharSequence;

.field private entryValues:[Ljava/lang/CharSequence;

.field private hasClicked:Z

.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;

.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPlmnSIM:[Ljava/lang/String;

.field private mSimState1:Ljava/lang/String;

.field private mSimState2:Ljava/lang/String;

.field private mSpinner:Landroid/widget/Spinner;

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private simIcon:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static bridge synthetic -$$Nest$fgetentries(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndex(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/nfc/NfcAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlmnSIM(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsimIcon(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasClicked(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIndex(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPhonePLMNName(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misMultiSim(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetPLMNName(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPLMNName(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSelectedItem(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedItem(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    const/16 p2, 0x9

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 80
    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v0, 0x1090008

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    const p2, 0x1090009

    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 90
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ril.ICC_TYPE0"

    const-string p2, "0"

    .line 93
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSimState1:Ljava/lang/String;

    const-string p1, "ril.ICC_TYPE1"

    .line 94
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSimState2:Ljava/lang/String;

    .line 97
    :cond_0
    new-instance p1, Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 p2, 0x4

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 101
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_1

    const-string p0, "PaymentDropDownPreference"

    const-string p1, "SIM Count is 0"

    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast p2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance p2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 125
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 126
    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private getPhonePLMNName(I)Ljava/lang/String;
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 460
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSubId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "gsm.operator.alpha"

    .line 466
    invoke-static {p1, v2, v0}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 471
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040495

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSubId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm.network.type"

    const-string v2, "0"

    .line 475
    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 469
    :cond_2
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10406ae

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :catch_0
    move-exception p0

    .line 462
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private getRatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, ":"

    .line 507
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 508
    aget-object v0, p0, p1

    const-string v1, "UMTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, p1

    const-string v1, "HSPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, p1

    const-string v1, "HSDPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, p1

    const-string v1, "HSUPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, p1

    const-string v1, "HSPAP"

    .line 509
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, p1

    const-string v1, "TD-SCDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    aget-object p0, p0, p1

    const-string p1, "LTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, " 4G"

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0

    :cond_2
    :goto_0
    const-string p0, " 3G"

    return-object p0
.end method

.method private getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v1, v0

    .line 405
    :goto_0
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_1
    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 447
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_01:I

    goto :goto_2

    .line 444
    :pswitch_0
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_03:I

    goto :goto_2

    .line 441
    :pswitch_1
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_heart:I

    goto :goto_2

    .line 438
    :pswitch_2
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_office:I

    goto :goto_2

    .line 435
    :pswitch_3
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_home:I

    goto :goto_2

    .line 432
    :pswitch_4
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_internet:I

    goto :goto_2

    .line 429
    :pswitch_5
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_mms:I

    goto :goto_2

    .line 426
    :pswitch_6
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_sms:I

    goto :goto_2

    .line 423
    :pswitch_7
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_call:I

    goto :goto_2

    .line 420
    :pswitch_8
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_business_trip:I

    goto :goto_2

    .line 417
    :pswitch_9
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_travel:I

    goto :goto_2

    .line 414
    :pswitch_a
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_02:I

    goto :goto_2

    .line 411
    :pswitch_b
    sget p1, Lcom/android/settings/R$drawable;->sec_sim_card_01:I

    .line 451
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method

.method private getSubId(I)I
    .locals 0

    .line 519
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 520
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 521
    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private isMultiSim()Z
    .locals 1

    .line 544
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setPLMNName(Ljava/lang/String;I)V
    .locals 7

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.MSIMM"

    .line 484
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 486
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "0"

    if-eqz v1, :cond_0

    .line 487
    aget-object v1, v0, v3

    aput-object v1, v0, v2

    .line 488
    aput-object v4, v0, v3

    .line 491
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v3, v1, :cond_4

    if-ne p2, v3, :cond_3

    .line 493
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, p1

    goto :goto_1

    .line 494
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v1, v3

    if-nez p2, :cond_2

    .line 495
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSimState1:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_2

    :cond_2
    if-ne p2, v2, :cond_3

    .line 498
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSimState2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 499
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setSelectedItem(IZ)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 528
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;->onItemSelected(ILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 532
    iput p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 534
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void
.end method


# virtual methods
.method addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearItems()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method getEntryArray()[Ljava/lang/String;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "select_name_2"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method isOffSlot(I)Z
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone1_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 231
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "ril.ICC_TYPE0"

    const-string v5, "0"

    .line 233
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSimState1:Ljava/lang/String;

    const-string v4, "ril.ICC_TYPE1"

    .line 234
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSimState2:Ljava/lang/String;

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    .line 237
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSimState1:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_2
    return v2

    :cond_3
    if-ne p1, v2, :cond_5

    if-eqz v3, :cond_4

    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 144
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 153
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method onUpdateAdapter()V
    .locals 8

    const-string v0, "PaymentDropDownPreference"

    const-string v1, "0"

    const-string v2, "1"

    .line 185
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entryValues:[Ljava/lang/CharSequence;

    .line 186
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 187
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v2, v4

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v2

    .line 190
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    .line 192
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    array-length v5, v2

    if-lez v5, :cond_0

    const-string v5, "ril.ICC_TYPE0"

    .line 193
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    const-string v5, "ril.ICC_TYPE1"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    .line 202
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getPreferredSimSlot()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 204
    :try_start_1
    iput v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    move v3, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move v3, v1

    goto :goto_1

    :catch_2
    move-exception v2

    .line 210
    :goto_0
    sget-boolean v1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Dual SWP nullpointerexception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

    .line 207
    :goto_1
    sget-boolean v1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Dual SWP not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    :goto_2
    move v1, v3

    .line 213
    :cond_4
    :goto_3
    iput v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    .line 214
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string v1, "@layout/nfc_sim_dropdown_list_view_row"

    const-string v2, "layout"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    iget v7, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mIndex:I

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method setResult(I)Z
    .locals 9

    .line 251
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    .line 253
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isOffSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler-IA;)V

    .line 255
    new-instance v7, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler-IA;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->nfc_please_wait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v8, 0x1

    invoke-static {v0, v2, v1, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v6

    .line 257
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;ILcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;Landroid/app/ProgressDialog;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v8

    :cond_0
    return v1
.end method

.method setSIMcallback(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$CallbackOnSIMselected;

    return-void
.end method

.method setSelectedValue(Ljava/lang/Object;Z)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entryValues:[Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedItem(IZ)V

    :cond_0
    return-void
.end method
