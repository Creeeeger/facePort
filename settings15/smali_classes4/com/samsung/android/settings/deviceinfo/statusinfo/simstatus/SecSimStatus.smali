.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final mSupportSignalStrength:Z

.field public static final sSalesCode:Ljava/lang/String;


# instance fields
.field public final mAreaInfoReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

.field public mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mCurrentSlotId:I

.field public mCurrentSubId:I

.field public mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field public final mImsManager:[Lcom/sec/ims/ImsManager;

.field public mImsPreference:Landroidx/preference/Preference;

.field public final mIsRegistered:[Z

.field public mIsRegisteredListener:Z

.field public final mIsShowImsStatus:[Z

.field public final mOnSubscriptionsChangedListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;

.field public mPreviousServiceState:Landroid/telephony/ServiceState;

.field public mRes:Landroid/content/res/Resources;

.field public mShowLatestAreaInfo:Z

.field public final mSimHotSwapReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

.field public mSimSlotCount:I

.field public mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

.field public mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3;

    const v1, 0x7f170186

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/ims/ImsManager;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegistered:[Z

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimHotSwapReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    return-void
.end method

.method public static getDisplayNetworkProvider(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "kddi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "au"

    :cond_1
    const-string v1, "CCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result p2

    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    const p1, 0x7f1402c5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p2

    sget-object p3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->UK_VIRGIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    invoke-virtual {p3, p2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->isInsertedSim(I)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "WiFiCall"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "gsm.operator.alpha"

    const-string p3, ""

    invoke-static {p2, p1, p3}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const p1, 0x7f140c90

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "NR SA"

    return-object p0

    :pswitch_2
    const-string p0, "IWLAN"

    return-object p0

    :pswitch_3
    const-string p0, "TD_SCDMA"

    return-object p0

    :pswitch_4
    const-string p0, "GSM"

    return-object p0

    :pswitch_5
    const-string p0, "HSPA+"

    return-object p0

    :pswitch_6
    const-string p0, "CDMA - eHRPD"

    return-object p0

    :pswitch_7
    const-string p0, "LTE"

    return-object p0

    :pswitch_8
    const-string p0, "CDMA - EvDo rev. B"

    return-object p0

    :pswitch_9
    const-string p0, "iDEN"

    return-object p0

    :pswitch_a
    const-string p0, "HSPA"

    return-object p0

    :pswitch_b
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_c
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_d
    const-string p0, "CDMA - 1xRTT"

    return-object p0

    :pswitch_e
    const-string p0, "CDMA - EvDo rev. A"

    return-object p0

    :pswitch_f
    const-string p0, "CDMA - EvDo rev. 0"

    return-object p0

    :pswitch_10
    const-string p0, "CDMA"

    return-object p0

    :pswitch_11
    const-string p0, "UMTS"

    return-object p0

    :pswitch_12
    const-string p0, "EDGE"

    return-object p0

    :pswitch_13
    const-string p0, "GPRS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isShowImsStatus(Landroid/content/Context;I)Z
    .locals 8

    const-string v0, "isShowImsStatus() START, slotId: "

    const-string v1, "SecSimStatus"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "simslot"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo p0, "show_regi_info_in_sec_settings"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_5

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-virtual {v2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "isShowImsStatus() obj: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const-string p0, "isShowImsStatus() isShow: "

    invoke-static {p0, v1, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_3
    :goto_5
    const-string p0, "isShowImsStatus() not found"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0
.end method

.method public static supportIccId(ILandroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z
    .locals 4

    const-string/jumbo v0, "supportIccId() START"

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result p1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    const-string p2, "LteOnCdma : "

    const-string v3, "SecDeviceInfoUtils"

    invoke-static {p2, v3, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "showIccId: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\nsupportIccId() END"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public final getCurrentServiceState()Landroid/telephony/ServiceState;
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "getCurrentServiceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2b

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170186

    return p0
.end method

.method public final initialize$6()V
    .locals 8

    const-string v0, "SecSimStatus"

    const-string v1, "initialize() START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_0

    const-string v1, "mSubscriptionInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSubscriptionStatusNotAvailable()V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentSlotId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentSubId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    const-string/jumbo v1, "updateLatestAreaInfo() START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-static {v1, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mShowLatestAreaInfo: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    invoke-static {v1, v3, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.telephony.CellBroadcastService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x100000

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v2, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCellBroadcastServicePackageName: found "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CBS packages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "getCellBroadcastServicePackageName: "

    if-nez v6, :cond_4

    invoke-static {v7, v5, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v6, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    invoke-static {v7, v5, v6, v0}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, "getCellBroadcastServicePackageName: found a CBS package but packageName is null/empty"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v3, "getCellBroadcastServicePackageName: package name not found"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "Unable to bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "skipping bindService because connection already exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string v1, "latest_area_info"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    :cond_a
    :goto_3
    const-string/jumbo v1, "updateLatestAreaInfo() END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSubscriptionStatus$1()V

    const-string p0, "initialize() END"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "onCreate()"

    const-string v0, "SecSimStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SalesCode: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string p1, "ims_reg"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mSimSlotCount: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "onCreateView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getFirstSlotIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimHotSwapReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->disconnectService()V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegistered:[Z

    aput-boolean v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimHotSwapReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    if-ge v1, v2, :cond_1

    if-ge v1, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->isShowImsStatus(Landroid/content/Context;I)Z

    move-result v3

    aput-boolean v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "createImsService() START, slotId: "

    invoke-static {v1, v3, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-instance v5, Lcom/sec/ims/ImsManager;

    new-instance v6, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V

    invoke-direct {v5, v2, v6, v1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v5, v3, v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->connectService()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateImsStatus()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;

    invoke-virtual {v0, v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateAreaInfoText$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.telephony.action.AREA_INFO_UPDATED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    return-void
.end method

.method public final onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "TabChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->initialize$6()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateImsStatus()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateAreaInfoText$1()V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    :cond_4
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "SecSimStatus"

    const-string/jumbo p2, "onViewCreated()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->initialize$6()V

    return-void
.end method

.method public final removePreference(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "removePreference: "

    const-string v1, "SecSimStatus"

    invoke-static {v0, p1, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setRssiNoti(I)V
    .locals 5

    const-string/jumbo v0, "setRssiNoti : dos.close() error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRssiNoti() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecSimStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw p0
.end method

.method public final setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const p2, 0x7f140c9c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateAreaInfoText$1()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v1, "latest_area_info"

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-interface {v0, v2}, Landroid/telephony/ICellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t get area info. e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecSimStatus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateImsStatus()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegistered:[Z

    aget-boolean v0, v1, v0

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const v0, 0x7f142e1f

    goto :goto_1

    :cond_2
    const v0, 0x7f142e1e

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f142d4e

    goto :goto_1

    :cond_4
    const v0, 0x7f142d48

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims_reg"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final updateNetworkProvider$1()V
    .locals 5

    const-string/jumbo v0, "updateNetworkProvider() START"

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getDisplayNetworkProvider(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "operator_name"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "updateNetworkProvider() END"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateNetworkType$1()V
    .locals 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "updateNetworkType() START (Mobile Voice/Data network type)"

    const-string v2, "SecSimStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const-string v3, "data_network_type"

    const-string/jumbo v4, "voice_network_type"

    const v5, 0x7f140c90

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    const-string/jumbo v8, "subId: "

    const-string v9, ", phoneId: "

    const-string v10, ", slotId: "

    invoke-static {v8, v9, v1, v6, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v7, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    iget-object v8, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    const/4 v10, 0x0

    if-nez v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v9

    :goto_0
    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "gsm.network.type"

    invoke-static {v6, v12, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v11

    const-string v12, "CarrierFeature_Setting_CustNetworkSelMenu4"

    const-string v13, ""

    invoke-virtual {v11, v7, v12, v13, v10}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "networkType: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", networkNameDisplayType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v12

    const-string v13, ", dataNetworkTypeName: "

    const-string v14, "HSPAP"

    const-string v15, "Unknown"

    if-eqz v12, :cond_c

    const-string v1, "isChinaCTCModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Replace networkType to be same as voiceNetworkType ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v1

    goto/16 :goto_4

    :cond_2
    const-string v7, "CDMA-IS95A"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "CDMA-IS95B"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "1xRTT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const-string v7, "EvDo-rev.0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "EvDo-rev.A"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "EvDo-rev.B"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, "UMTS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v6, "WCDMA"

    goto :goto_4

    :cond_5
    const-string v7, "HSDPA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "HSUPA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "HSPA+"

    goto :goto_4

    :cond_7
    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    :goto_1
    const-string v6, "HSPA"

    goto :goto_4

    :cond_9
    :goto_2
    const-string v6, "CDMA EVDO"

    goto :goto_4

    :cond_a
    :goto_3
    const-string v6, "CDMA 1x"

    :cond_b
    :goto_4
    const-string v7, "isChinaCTCModel => changed networkType: "

    invoke-static {v7, v6, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_c
    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v16

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v5, "getOptionalRadioTech: "

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v12, "airtel"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v5, v7

    goto :goto_5

    :cond_d
    const-string v12, "jio"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->RELIANCE:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    goto :goto_5

    :cond_e
    sget-object v5, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->OTHERS:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "indianOperator: "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_f

    if-ne v5, v7, :cond_f

    const-string v5, "DC"

    goto :goto_6

    :cond_f
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_10
    const/4 v5, 0x0

    :goto_6
    if-eqz v8, :cond_11

    invoke-static {v8}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_11
    const/4 v6, 0x0

    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "actualDataNetworkType: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nactualVoiceNetworkType: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", voiceNetworkTypeName: "

    const-string v12, "\noverrideNetworkType: "

    invoke-static {v7, v8, v10, v6, v12}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v9, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-eq v9, v7, :cond_13

    if-ne v9, v8, :cond_12

    goto :goto_8

    :cond_12
    const/4 v10, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v10, 0x1

    :goto_9
    const/16 v7, 0xd

    if-ne v1, v7, :cond_14

    if-eqz v10, :cond_14

    const-string v1, "NR NSA"

    goto :goto_a

    :cond_14
    move-object v1, v5

    :goto_a
    sget-object v5, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "LTE"

    if-nez v7, :cond_1a

    const-string v7, "VPP"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_d

    :cond_15
    const-string v7, "NUMERIC"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "4G"

    if-nez v5, :cond_16

    const-string v5, "Replace dataNetworkTypeName LTE to 4G"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "Replace voiceNetworkTypeName LTE to 4G"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :goto_b
    move-object v6, v1

    move-object v1, v5

    goto/16 :goto_f

    :cond_17
    :goto_c
    move-object/from16 v17, v6

    move-object v6, v1

    move-object/from16 v1, v17

    goto/16 :goto_f

    :cond_18
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_19

    const-string v5, "For isChinaModel"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v5

    if-ne v5, v8, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v1, "Replace dataNetworkTypeName to LTE, NR "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LTE, NR"

    goto :goto_c

    :cond_19
    const-string v7, "CCT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v5

    const-string v7, "isWifiCallingAvailable: "

    invoke-static {v7, v2, v5}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v5, :cond_17

    const-string v5, "IWLAN"

    goto :goto_b

    :cond_1a
    :goto_d
    const-string v5, "For VZW"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v5

    const-string/jumbo v7, "nrFrequencyRange: "

    invoke-static {v5, v7, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    if-ne v5, v7, :cond_1b

    const-string v1, "5G UW"

    goto :goto_e

    :cond_1b
    const/4 v7, 0x1

    if-eq v5, v7, :cond_1c

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1c

    if-ne v5, v8, :cond_1d

    :cond_1c
    const-string v1, "5G"

    :cond_1d
    :goto_e
    const-string/jumbo v5, "ro.ril.svlte1x"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "false"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    if-ne v5, v8, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "1x RTT"

    if-nez v5, :cond_1e

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object v1, v7

    :cond_1e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v6, v1

    move-object v1, v7

    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1f
    const-string/jumbo v1, "voice network type is Empty or Unknown, Set to default text"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const v5, 0x7f140c90

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_20
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_21
    const-string v5, "data network type is Empty or Unknown, Set to default text"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const v6, 0x7f140c90

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "voiceNetworkTypeName: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "updateNetworkType() END (Mobile Voice/Data network type)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateRoamingStatus$1(Landroid/telephony/ServiceState;)V
    .locals 4

    const-string/jumbo v0, "updateRoamingStatus() START"

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "roaming_state"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f141df4

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f141def

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f141df0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateRoamingStatus() - Roaming : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo p0, "updateRoamingStatus() END"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateServiceState$1(Landroid/telephony/ServiceState;)V
    .locals 4

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "updateServiceState() START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const/16 v2, -0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f142c68

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "signal_strength"

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mPreviousServiceState:Landroid/telephony/ServiceState;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    const/4 p1, 0x1

    if-eq v1, p1, :cond_3

    const/4 p1, 0x2

    if-eq v1, p1, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f141df4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f141df2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f141df3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f141df1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string/jumbo v1, "service_state"

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "updateServiceState() END"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "SecSimStatus"

    const-string/jumbo v2, "updateSignalStrength() START"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    const-string/jumbo v3, "signal_strength"

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v5, "show_signal_strength_in_sim_status_bool"

    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "slotId: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Signal strength Not available (Reason: show_signal_strength_in_sim_status_bool value is FALSE)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    return-void

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    const v5, 0x7f142c68

    const/4 v6, 0x0

    const/16 v7, -0x71

    if-nez v2, :cond_4

    const-string v2, "[SimStatus] out of service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    const/4 v8, -0x1

    if-nez v2, :cond_6

    :cond_5
    move v2, v8

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/CellSignalStrength;

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v10

    if-eq v10, v8, :cond_7

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_9

    :cond_8
    move v9, v8

    goto :goto_2

    :cond_9
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/CellSignalStrength;

    invoke-virtual {v10}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v11

    if-eq v11, v8, :cond_a

    invoke-virtual {v10}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v9

    :goto_2
    const-string v10, "[SimStatus] (1) signalDbm: "

    const-string v11, " dBm, signalAsu: "

    const-string v12, "asu"

    invoke-static {v10, v11, v2, v9, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[SimStatus] slotId: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "isChinaCTCModel"

    invoke-static {v1, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "/"

    const-string v14, "gsm.sim.selectnetwork"

    const-string v15, "CDMA"

    if-nez v10, :cond_b

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v9

    const-string v6, "[SimStatus] CTC CDMA D/A : "

    invoke-static {v6, v13, v2, v9, v1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_3

    :cond_b
    if-nez v10, :cond_c

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    if-ne v10, v4, :cond_e

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v9

    const-string v6, "[SimStatus] CTC GSM D/A : "

    invoke-static {v6, v13, v2, v9, v1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_e
    :goto_3
    if-ne v2, v8, :cond_f

    const/4 v2, 0x0

    :cond_f
    if-ne v9, v8, :cond_10

    const/4 v9, 0x0

    :cond_10
    if-nez v2, :cond_17

    if-nez v9, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-eq v6, v4, :cond_17

    const-string v2, "display the cdma values instead of gsm values"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    const/16 v6, -0x78

    if-ne v4, v6, :cond_11

    goto :goto_5

    :cond_11
    if-ne v2, v6, :cond_12

    goto :goto_4

    :cond_12
    if-ge v2, v4, :cond_13

    goto :goto_5

    :cond_13
    :goto_4
    move v2, v4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v4

    if-nez v4, :cond_14

    goto :goto_6

    :cond_14
    if-nez v9, :cond_16

    :cond_15
    move v9, v4

    goto :goto_6

    :cond_16
    if-ge v9, v4, :cond_15

    :cond_17
    :goto_6
    const-string/jumbo v4, "ro.baseband"

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "[SimStatus] baseband: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "[SimStatus] (2) signalDbm: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v10, 0xff

    const/16 v13, 0x63

    if-nez v6, :cond_1a

    const-string/jumbo v6, "msm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "mdm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_18
    if-eq v8, v9, :cond_19

    if-eq v13, v9, :cond_19

    if-ne v10, v9, :cond_1e

    :cond_19
    const-string v2, "[SimStatus] Set dBm, Asu to -113, 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_1a
    iget-object v4, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    const-string v15, "[SimStatus] subId: "

    const-string v7, ", phoneId: "

    invoke-static {v15, v7, v4, v14, v1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    const v15, 0x7f140c90

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v5, "gsm.network.type"

    invoke-static {v14, v5, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "[SimStatus] networkType("

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") : "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v7

    :try_start_0
    iget-object v14, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v14, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const/4 v4, 0x0

    :goto_7
    const-string v14, "): "

    if-eqz v7, :cond_1b

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "[SimStatus] networkType data("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_1b
    if-eqz v4, :cond_1c

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "[SimStatus] networkType voice("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_8
    if-eq v8, v9, :cond_1d

    if-eq v13, v9, :cond_1d

    if-eq v10, v9, :cond_1d

    iget-object v4, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "Unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[SimStatus] signalAsu: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , Set to -113, 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/16 v7, -0x71

    goto :goto_9

    :cond_1e
    move v7, v2

    move v6, v9

    :goto_9
    const-string v2, "[SimStatus] (final) signalDbm: "

    invoke-static {v2, v11, v7, v6, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f142c68

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateSubscriptionStatus$1()V
    .locals 5

    const-string/jumbo v0, "updateSubscriptionStatus() START"

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TM updated with SubId("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkProvider$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateServiceState$1(Landroid/telephony/ServiceState;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkType$1()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateRoamingStatus$1(Landroid/telephony/ServiceState;)V

    const-string/jumbo v0, "updateIccidNumber() START"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-static {v3, v0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->supportIccId(ILandroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    const-string v2, "icc_id"

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "VPP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->addWhitespaceEvery4digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo p0, "updateIccidNumber() END"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "updateSubscriptionStatus() END"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSubscriptionStatusNotAvailable()V
    .locals 3

    const-string v0, "SecSimStatus"

    const-string/jumbo v1, "updateSubscriptionStatusNotAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "operator_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_state"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "latest_area_info"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "service_state"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    const-string/jumbo v2, "signal_strength"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    :goto_0
    const-string/jumbo v0, "voice_network_type"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_network_type"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "roaming_state"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->supportIccId(ILandroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    const-string v2, "icc_id"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method
