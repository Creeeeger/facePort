.class public Lcom/android/settings/network/apn/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;


# static fields
.field public static final CARRIERS_PROJECTION:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field public final iconAlphaDisableValue:I

.field public final iconAlphaEnableValue:I

.field public final mAirplainModeEnabledObserver:Lcom/android/settings/network/apn/ApnSettings$3;

.field public mAllowAddingApns:Z

.field public final mApnRestoreReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mBluetoothListener:Lcom/android/settings/network/apn/ApnSettings$4;

.field public final mBluetoothPanLock:Ljava/lang/Object;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mCurrentSIMSlot:I

.field public mHidePresetApnDetails:Z

.field public final mHotSwapReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

.field public mImsManager:Lcom/sec/ims/ImsManager;

.field public mIsBtTetherOn:Z

.field public mIsEditableMode:Z

.field public mIsImsServiceConnected:Z

.field public mLockAPNWhenTetheringOn:Z

.field public mMccMnc:Ljava/lang/String;

.field public mMvnoCandidateMatchData:Ljava/lang/String;

.field public mMvnoCandidateType:Ljava/lang/String;

.field public mMvnoMatchData:Ljava/lang/String;

.field public mMvnoType:Ljava/lang/String;

.field public mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

.field public mPreferredApnRepositorySim2:Lcom/android/settings/network/apn/PreferredApnRepository;

.field public mProxy:Landroid/bluetooth/BluetoothPan;

.field public mRestoreDefaultApnMode:Z

.field public mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

.field public mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

.field public mSimTabChangeFlag:Z

.field public mSubId:I

.field public mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field public mTabToast:Landroid/widget/Toast;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mTetherChangeReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

.field public mTetherStateFilter:Landroid/content/IntentFilter;

.field public mUnavailable:Z

.field public mUserManager:Landroid/os/UserManager;

.field public final mVZWAPNs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    const-string v7, "edited"

    const-string v8, "user_visible"

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "type"

    const-string v5, "mvno_type"

    const-string v6, "mvno_match_data"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSimTabChangeFlag:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothPanLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    const-string v4, "VZW Roaming Internet"

    const-string v5, "Tracfone - Verizon"

    const-string v2, "Verizon Internet"

    const-string v3, "LTE - Verizon Internet"

    const-string v6, "Tracfone"

    const-string v7, "Visible Internet NEW"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mVZWAPNs:Ljava/util/List;

    const/16 v0, 0x42

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->iconAlphaDisableValue:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->iconAlphaEnableValue:I

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$1;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$1;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherChangeReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$3;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAirplainModeEnabledObserver:Lcom/android/settings/network/apn/ApnSettings$3;

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$4;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothListener:Lcom/android/settings/network/apn/ApnSettings$4;

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$1;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mApnRestoreReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    return-void
.end method


# virtual methods
.method public final dualSimMPSDataLock()Z
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const-string v1, "ApnSettings"

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const-string v0, "ro.boot.carrierid"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "AIS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "52001"

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "52003"

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "DataLock operator"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string p0, "DataLockFeature is disable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final fillList()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    iget v5, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    check-cast v5, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const-string v6, "simSlotCnt : "

    const-string v8, "SecSimFeatureProvider"

    invoke-static {v5, v6, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-le v5, v3, :cond_1

    iget v5, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    if-ne v5, v3, :cond_0

    const-string v5, " AND current1 = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v5, " AND current = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    sget-boolean v5, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    if-nez v5, :cond_3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v3

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    const-string v5, " AND type like \'%default%\' and name NOT LIKE \'%GLOBAL%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "subId : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "ApnSettings"

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "where = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->isCallingState()Z

    move-result v5

    const-string v6, ""

    iput-object v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v3

    :goto_4
    const-string v8, "isTethringOn : "

    const-string v9, ", mIsBtTetherOn : "

    invoke-static {v8, v9, v6}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    invoke-static {v8, v9, v12}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    if-nez v5, :cond_9

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    move v5, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v5, v3

    :goto_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "_id asc"

    :goto_8
    move-object v11, v6

    goto :goto_9

    :cond_a
    const-string v6, "name ASC"

    goto :goto_8

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const/4 v7, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/sec/ims/ImsManager;->disconnectService()V

    iput-object v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    :cond_b
    new-instance v6, Lcom/sec/ims/ImsManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/android/settings/network/apn/ApnSettings$9;

    invoke-direct {v9, v0}, Lcom/android/settings/network/apn/ApnSettings$9;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iget v10, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-direct {v6, v8, v9, v10}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    iput-object v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v6}, Lcom/sec/ims/ImsManager;->connectService()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "connectImsManager() : slot"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v6, v8, v12}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v4, :cond_37

    const-string v6, "apn_list"

    invoke-virtual {v0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "APN Count : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_32

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v7, 0x4

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v6

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v10

    const/4 v10, 0x7

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v18, v11

    const-string v11, "name : "

    move-object/from16 v19, v8

    const-string v8, ", apn : "

    move-object/from16 v20, v9

    const-string v9, ", key : "

    invoke-static {v11, v14, v8, v15, v9}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", type : "

    const-string v11, ", edited : "

    invoke-static {v8, v1, v9, v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ", mvnoType : "

    const-string v11, ", mvnoMatchData : "

    invoke-static {v8, v3, v9, v7, v11}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", userVisible : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iget v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, v0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/data/ApnSetting;->getMvnoTypeIntFromString(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v9, v11, v6}, Landroid/telephony/TelephonyManager;->matchesCurrentSimOperator(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iput-object v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    const/4 v6, 0x1

    goto :goto_b

    :cond_c
    iput-object v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateType:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateMatchData:Ljava/lang/String;

    const/4 v6, 0x2

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checkApnType : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    const-string v9, "ATT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_c

    :cond_e
    const/4 v8, 0x2

    goto :goto_c

    :sswitch_1
    const-string v9, "APP"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_c

    :cond_f
    const/4 v8, 0x1

    goto :goto_c

    :sswitch_2
    const-string v9, "AIO"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_c

    :cond_10
    const/4 v8, 0x0

    :goto_c
    packed-switch v8, :pswitch_data_0

    const/4 v7, 0x0

    goto :goto_d

    :pswitch_0
    const/4 v7, 0x1

    :goto_d
    const-string v8, "ims"

    if-nez v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v7}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    iget-boolean v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-eqz v7, :cond_12

    const-string v7, "EditableMode"

    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v22, v13

    const/4 v5, 0x0

    goto/16 :goto_11

    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "cdma"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "US Model and apn name is cdma"

    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto :goto_e

    :cond_13
    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v9, :cond_15

    iget-boolean v11, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    if-eqz v11, :cond_15

    const-string v11, "mmtel"

    move/from16 v21, v7

    const/16 v7, 0xd

    invoke-virtual {v9, v11, v7}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v7

    iget-object v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    move-object/from16 v22, v13

    const/16 v13, 0x12

    invoke-virtual {v9, v11, v13}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v9

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v11}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v11

    const-string v13, "isVoLTEVideoCallSupportedSIM hasVoLteSim "

    move/from16 v23, v6

    const-string v6, ", supportVolte = "

    move/from16 v24, v5

    const-string v5, ", supportVowifi = "

    invoke-static {v13, v11, v6, v7, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v5, v9, v12}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v7, :cond_14

    if-eqz v9, :cond_16

    :cond_14
    if-eqz v11, :cond_16

    goto :goto_f

    :cond_15
    move/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v22, v13

    :cond_16
    const/16 v21, 0x1

    goto :goto_f

    :cond_17
    move/from16 v24, v5

    move/from16 v23, v6

    move/from16 v21, v7

    move-object/from16 v22, v13

    :goto_f
    if-nez v10, :cond_18

    const/4 v5, 0x1

    goto :goto_10

    :cond_18
    move/from16 v5, v21

    :goto_10
    const-string v6, "hideApnOnList : "

    invoke-static {v6, v12, v5}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_11
    if-eqz v5, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not add the list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    :goto_12
    move-object/from16 v6, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v13, v22

    move/from16 v5, v24

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_13
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_19
    new-instance v5, Lcom/android/settings/network/apn/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/settings/network/apn/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    iput v6, v5, Lcom/android/settings/network/apn/ApnPreference;->mSubId:I

    iget-boolean v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mHidePresetApnDetails:Z

    if-eqz v6, :cond_1a

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/settings/network/apn/ApnPreference;->mHideDetails:Z

    goto :goto_14

    :cond_1a
    invoke-virtual {v5, v15}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_14
    iget-boolean v3, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    iput-boolean v3, v5, Lcom/android/settings/network/apn/ApnPreference;->mIsEditableMode:Z

    if-nez v3, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v3, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v3}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v3, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0, v14}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    :goto_15
    const/4 v3, 0x1

    goto :goto_17

    :cond_1c
    :goto_16
    const/4 v3, 0x0

    goto :goto_17

    :cond_1d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v3, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v14}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_15

    :cond_1e
    iget-object v3, v0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v3, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_16

    :goto_17
    const-string v6, "isApnEnabled : "

    invoke-static {v6, v12, v3}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_20

    const-string v6, "default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_18

    :cond_1f
    const/4 v6, 0x0

    goto :goto_19

    :cond_20
    :goto_18
    const/4 v6, 0x1

    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v7}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v2, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, v14}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    :goto_1a
    const/4 v2, 0x1

    goto :goto_1c

    :cond_22
    :goto_1b
    const/4 v2, 0x0

    goto :goto_1c

    :cond_23
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v2, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, v14}, Lcom/android/settings/network/apn/ApnSettings;->isVZWApnList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_1a

    :cond_24
    const-string v7, "dun"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "multi_sim_data_call_slot"

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v7

    const-string v9, "CarrierFeature_Setting_BlockToSelectDUNApnType"

    invoke-virtual {v7, v2, v9, v8, v8}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v2

    const/4 v7, 0x1

    xor-int/2addr v2, v7

    goto :goto_1c

    :cond_25
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_1b

    :cond_26
    const-string v7, "xcap"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_1b

    :cond_27
    const-string v7, "mms,xcap"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    const-string v7, "ims,xcap"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_1b

    :goto_1c
    const-string v7, "getApnSelectable : "

    invoke-static {v7, v12, v2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    and-int/2addr v2, v6

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    goto :goto_1d

    :cond_28
    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_1d
    if-eqz v2, :cond_29

    if-nez v24, :cond_29

    const/4 v2, 0x1

    goto :goto_1e

    :cond_29
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean v3, v5, Lcom/android/settings/network/apn/ApnPreference;->mDefaultSelectable:Z

    const-string v2, "selectable : "

    const-string v6, ", enabled : "

    invoke-static {v2, v6, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v2, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    iget v7, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_2a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "subId/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_2a
    move-object v7, v2

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "name ASC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1f

    :cond_2b
    const/4 v7, 0x0

    :goto_1f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "getSelectedApnKey : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v5, Lcom/android/settings/network/apn/ApnPreference;->mIsChecked:Z

    iget-object v2, v5, Lcom/android/settings/network/apn/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_2c

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/android/settings/network/apn/ApnPreference;->mProtectFromCheckedChange:Z

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->dualSimMPSDataLock()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_12

    :cond_2d
    move/from16 v1, v23

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    move-object/from16 v6, v22

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    move-object/from16 v1, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    const/4 v3, 0x1

    goto :goto_20

    :cond_2e
    move-object/from16 v6, v22

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2f

    move-object/from16 v7, v20

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    move-object/from16 v1, v18

    move-object/from16 v8, v19

    goto :goto_20

    :cond_2f
    move-object/from16 v8, v19

    move-object/from16 v7, v20

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    move-object/from16 v1, v18

    goto :goto_20

    :cond_30
    move-object/from16 v8, v19

    move-object/from16 v7, v20

    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    move-object/from16 v1, v18

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    goto :goto_20

    :cond_31
    move-object/from16 v9, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-object v11, v1

    move v1, v2

    move-object v13, v6

    move-object v10, v9

    move-object/from16 v6, v16

    move/from16 v5, v24

    const/4 v2, 0x0

    move-object v9, v7

    goto/16 :goto_13

    :cond_32
    move-object/from16 v16, v6

    move-object v7, v9

    move-object v9, v10

    move-object v1, v11

    move-object v6, v13

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_21

    :cond_33
    move-object v10, v9

    goto :goto_22

    :cond_34
    :goto_21
    const-string v2, "change mvno"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move-object v8, v7

    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apnList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mmsApnList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    move-object/from16 v4, v16

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_23

    :cond_35
    move-object/from16 v4, v16

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_24

    :cond_36
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "add candidate"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateType:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoCandidateMatchData:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_25

    :cond_37
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->disconnectService()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnectImsManager() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    invoke-static {v1, v0, v12}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xfd27 -> :sswitch_2
        0xfe01 -> :sswitch_1
        0xfe81 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0x3e9

    if-ne p1, p0, :cond_0

    const/16 p0, 0x243

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getMccMnc()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MccMnc : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mMccMnc:Ljava/lang/String;

    const-string v1, "ApnSettings"

    invoke-static {v0, p0, v1}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public final getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSimSlotNum()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current Sim Slot index : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    const-string v1, "ApnSettings"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final isCallingState()Z
    .locals 4

    const-string v0, "ApnSettings"

    const-string v1, "isCallingState : "

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Call Settings fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEditableMode(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "vzw"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyString"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTE_TEST"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "vzwExtra : "

    const-string v3, ", sprExtra : "

    const-string v4, ", lteTestExtra : "

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApnSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "editable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast p1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    const-string p0, "editableMode : "

    invoke-static {p0, v3, v2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public final isVZWApnList(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mVZWAPNs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isVZWApnList : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", name : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v0, 0x7f140354

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    const-string p1, "ApnSettings"

    const-string v0, "isUiRestricted removeAll!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "telephony_subscription_service"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/android/settings/network/apn/PreferredApnRepository;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcom/android/settings/network/apn/PreferredApnRepository;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    iput-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    new-instance v3, Lcom/android/settings/network/apn/PreferredApnRepository;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {v3, p1, v0}, Lcom/android/settings/network/apn/PreferredApnRepository;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    iput-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim2:Lcom/android/settings/network/apn/PreferredApnRepository;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/apn/PreferredApnRepository;

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {v0, p1, v3}, Lcom/android/settings/network/apn/PreferredApnRepository;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/network/apn/PreferredApnRepository;

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {v0, p1, v3}, Lcom/android/settings/network/apn/PreferredApnRepository;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    :cond_2
    :goto_0
    const v0, 0x7f170037

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->getSimSlotNum()V

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMccMnc()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SUB ID : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ApnSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mLockAPNWhenTetheringOn : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->isEditableMode(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iget v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "45006"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "isLgSim : "

    const-string v4, "ApnUtils"

    invoke-static {v3, v4, v1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    :cond_3
    const-string v1, "hide_preset_apn_details_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHidePresetApnDetails:Z

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/android/settings/network/apn/ApnSettings$5;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f141ef3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1409b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f080910

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f140a36

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1417e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item select id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApnSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-eq v2, v0, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const v1, 0x102002c

    if-eq v2, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v0

    :cond_1
    const/16 p1, 0xc

    const/16 v2, 0xe27

    invoke-static {p1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->dualSimMPSDataLock()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f14034f

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v2, 0x7f140350

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v2, Lcom/android/settings/network/apn/ApnSettings$6;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$6;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    const v1, 0x7f1409d3

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$6;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/network/apn/ApnSettings$6;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDlg:Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    const-string p1, "broadcastSetCp()"

    const-string v2, "OmaCpUtils"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.wsomacp"

    const-string v4, "com.wsomacp.ui.FrontControllerActivity"

    invoke-static {v3, v4, p1}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const/high16 v3, 0xa000000

    invoke-static {p0, v1, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->dualSimMPSDataLock()Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "sub_id"

    iget v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mvno_type"

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mvno_match_data"

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v2}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v2, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v2, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    :cond_a
    :goto_1
    const-string v2, "editable_mode"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " addNewApn start() ; Details "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_b
    return v0
.end method

.method public final onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    const-string p0, "ApnSettings"

    const-string v0, "isUiRestricted return onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mApnRestoreReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherChangeReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    sput-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mAirplainModeEnabledObserver:Lcom/android/settings/network/apn/ApnSettings$3;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mProxy:Landroid/bluetooth/BluetoothPan;

    :cond_2
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange(): Preference - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue type - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mSubid : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-static {p1, v1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    iget p1, p1, Lcom/android/settings/network/apn/PreferredApnRepository;->subId:I

    iget v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    if-ne p1, v1, :cond_0

    const-string p1, "mPreferredApnRepositorySim1 called"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/network/apn/PreferredApnRepository;->setPreferredApn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "mPreferredApnRepositorySim2 called"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim2:Lcom/android/settings/network/apn/PreferredApnRepository;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/network/apn/PreferredApnRepository;->setPreferredApn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getEnabledSimCnt()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    move v5, v4

    goto :goto_1

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    if-eqz v5, :cond_3

    :cond_2
    move v5, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v5}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v5, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v5, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isLraImsi(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v5, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_6
    iget-boolean v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :goto_1
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Add Option State : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-nez v5, :cond_7

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v5, p0, Lcom/android/settings/network/apn/ApnSettings;->iconAlphaDisableValue:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v5, p0, Lcom/android/settings/network/apn/ApnSettings;->iconAlphaEnableValue:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    :goto_2
    if-eqz v3, :cond_11

    if-ge v0, v1, :cond_a

    :cond_9
    :goto_3
    move v0, v4

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-static {v0}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isLraImsi(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->isCallingState()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    :cond_f
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsBtTetherOn:Z

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    move v0, v1

    :goto_4
    const-string v2, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Restore Option State : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_11
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    const-string v0, "com.samsung.android.messaging"

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v2, "com.wsomacp"

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "checkOmaCp()  old OmaCpCount "

    const-class v2, Lcom/samsung/android/settings/network/apn/OmaCpUtils;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v6, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->CP_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-eqz v5, :cond_13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    const-string v3, "OmaCpUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " current OmaCpCount = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    if-eq v0, p0, :cond_13

    sput p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    :try_start_2
    const-string p0, "OmaCpUtils"

    const-string v0, "com.wsomacp.messagelist provider error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v4, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_13
    :goto_5
    monitor-exit v2

    const-string p0, "OmaCpUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OmaCp Count : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    invoke-static {v0, v2, p0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    if-gtz p0, :cond_14

    goto :goto_7

    :goto_6
    monitor-exit v2

    throw p0

    :catch_1
    const-string p0, "OmaCpUtils"

    const-string v0, "there is\'t Omacp Package"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v1, v4

    :cond_14
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_15
    return-void
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    const-string v0, "ApnSettings"

    const-string v1, "onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "onResume : Airplane mode ON"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v1, :cond_1

    const-string p0, "isUiRestricted return onResume"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.intent.action.SET_PREFERREDAPN_UPDATED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mApnRestoreReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v1, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherChangeReceiver:Lcom/android/settings/network/apn/ApnSettings$1;

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mAirplainModeEnabledObserver:Lcom/android/settings/network/apn/ApnSettings$3;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mLockAPNWhenTetheringOn:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mBluetoothListener:Lcom/android/settings/network/apn/ApnSettings$4;

    const/4 v5, 0x5

    invoke-virtual {v1, v2, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    if-nez v2, :cond_3

    sput-object v1, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    :cond_3
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->CP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    if-nez v4, :cond_4

    new-instance v4, Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, v5}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v4, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    :cond_4
    sget-object v4, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "OmaCpUtils"

    const-string v2, "Can\'t register ContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v1, :cond_5

    const-string v1, "onResume Filllist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ApnSettings"

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    goto :goto_0

    :cond_0
    const-string v0, "SubscriptionManager.getSubId(slotId) is NULL"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->getSimSlotNum()V

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMccMnc()V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0a0e5d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v3, 0x7f142c33

    invoke-virtual {v0, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTabToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTabToast:Landroid/widget/Toast;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTabToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "simTabAvailable : false"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "simTabAvailable : true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->isEditableMode(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsEditableMode:Z

    const-string p1, "Call TabChanged fillList"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSimTabChangeFlag:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/network/apn/PreferredApnRepository;->collectPreferredApn(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim2:Lcom/android/settings/network/apn/PreferredApnRepository;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/network/apn/PreferredApnRepository;->collectPreferredApn(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSimTabChangeFlag:Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mTabListener mCurrentSIMSlot = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCurrentSIMSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSubId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    const-string v1, " in TabListener"

    invoke-static {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc

    const/16 v0, 0xe28

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dd7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070dd9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070dd6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    new-instance p2, Lcom/android/settings/network/telephony/SubscriptionRepository;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/network/telephony/SubscriptionRepository;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/settings/network/telephony/SubscriptionRepository;->collectSubscriptionEnabled(ILandroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim1:Lcom/android/settings/network/apn/PreferredApnRepository;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    invoke-virtual {p2, p1, v0}, Lcom/android/settings/network/apn/PreferredApnRepository;->collectPreferredApn(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings;->mPreferredApnRepositorySim2:Lcom/android/settings/network/apn/PreferredApnRepository;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnSettings;I)V

    invoke-virtual {p2, p1, v0}, Lcom/android/settings/network/apn/PreferredApnRepository;->collectPreferredApn(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public final showDialog(I)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_0

    const-string p0, "ApnSettings"

    const-string p1, "ShowDialog : mRestoreDefaultApnMode"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method
