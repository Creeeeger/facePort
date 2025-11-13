.class public Lcom/android/settings/network/apn/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/apn/ApnEditor$ApnData;,
        Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;,
        Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field public static final APN_TYPES:[Ljava/lang/String;

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field public static final MHENG:Z

.field public static final MHSDBG:Z

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field static final PROTOCOL_INDEX:I = 0x10

.field static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field static final TYPE_INDEX:I = 0xf

.field static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private APN_TYPE_LIST:Ljava/lang/String;

.field private KEY_APN:Ljava/lang/String;

.field private mAirplaneModeEnabledObserver:Landroid/database/ContentObserver;

.field mApn:Landroidx/preference/SecEditTextPreference;

.field mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

.field private mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

.field mApnType:Landroidx/preference/SecEditTextPreference;

.field private mApnTypeList:Landroidx/preference/SecListPreference;

.field private mApnTypeStyle:Z

.field mAuthType:Landroidx/preference/SecListPreference;

.field private mBearerInitialVal:I

.field mBearerMulti:Landroidx/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroidx/preference/SwitchPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field mDefaultApnProtocol:Ljava/lang/String;

.field mDefaultApnRoamingProtocol:Ljava/lang/String;

.field mDefaultApnTypes:[Ljava/lang/String;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mHasMdmEditedApn:Z

.field private mHasUserEditedApn:Z

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mHotSwapStateFilter:Landroid/content/IntentFilter;

.field private mIsAttEditable:Z

.field private mIsCarrierIdApn:Z

.field private mIsNoWarning:Z

.field private mIsRequiredTypeDun:Z

.field private mIsRequiredTypeIms:Z

.field private mIsSprEditable:Z

.field private mIsVzwEditable:Z

.field mMcc:Landroidx/preference/SecEditTextPreference;

.field mMmsPort:Landroidx/preference/SecEditTextPreference;

.field mMmsProxy:Landroidx/preference/SecEditTextPreference;

.field mMmsc:Landroidx/preference/SecEditTextPreference;

.field mMnc:Landroidx/preference/SecEditTextPreference;

.field mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroidx/preference/SecListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field mName:Landroidx/preference/SecEditTextPreference;

.field private mNewApn:Z

.field mPassword:Landroidx/preference/SecEditTextPreference;

.field mPort:Landroidx/preference/SecEditTextPreference;

.field mProtocol:Landroidx/preference/SecListPreference;

.field mProxy:Landroidx/preference/SecEditTextPreference;

.field mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Landroidx/preference/SecListPreference;

.field private mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

.field mServer:Landroidx/preference/SecEditTextPreference;

.field private mSimSlot:I

.field private mSubId:I

.field mUser:Landroidx/preference/SecEditTextPreference;


# direct methods
.method public static synthetic $r8$lambda$p-O_CsviJ5ZAZ_vWcrV2ju0_TPM(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/apn/ApnEditor;->lambda$updateApnDataToDatabase$0(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierUri(Lcom/android/settings/network/apn/ApnEditor;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHasMdmEditedApn(Lcom/android/settings/network/apn/ApnEditor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsProjection()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 27

    .line 95
    const-class v0, Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    .line 120
    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

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
    sput-boolean v0, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    .line 121
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/apn/ApnEditor;->MHENG:Z

    const-string v1, "default"

    const-string/jumbo v2, "mms"

    const-string/jumbo v3, "supl"

    const-string v4, "dun"

    const-string v5, "hipri"

    const-string v6, "fota"

    const-string v7, "ims"

    const-string v8, "cbs"

    const-string v9, "ia"

    const-string v10, "emergency"

    const-string/jumbo v11, "mcx"

    const-string/jumbo v12, "xcap"

    .line 246
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "name"

    const-string v3, "apn"

    const-string/jumbo v4, "proxy"

    const-string/jumbo v5, "port"

    const-string/jumbo v6, "user"

    const-string/jumbo v7, "server"

    const-string/jumbo v8, "password"

    const-string/jumbo v9, "mmsc"

    const-string/jumbo v10, "mcc"

    const-string/jumbo v11, "mnc"

    const-string/jumbo v12, "numeric"

    const-string/jumbo v13, "mmsproxy"

    const-string/jumbo v14, "mmsport"

    const-string v15, "authtype"

    const-string/jumbo v16, "type"

    const-string/jumbo v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string/jumbo v21, "roaming_protocol"

    const-string/jumbo v22, "mvno_type"

    const-string/jumbo v23, "mvno_match_data"

    const-string v24, "edited"

    const-string/jumbo v25, "user_editable"

    const-string v26, "carrier_id"

    .line 276
    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    const-string v1, "apn_apn"

    .line 260
    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->KEY_APN:Ljava/lang/String;

    .line 261
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    .line 263
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    .line 264
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeIms:Z

    .line 268
    iput v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    .line 343
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    .line 344
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    .line 365
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnEditor$1;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAirplaneModeEnabledObserver:Landroid/database/ContentObserver;

    .line 375
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnEditor$2;-><init>(Lcom/android/settings/network/apn/ApnEditor;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/apn/ApnEditor;)Landroid/content/ContentResolver;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/apn/ApnEditor;)Landroid/content/ContentResolver;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 640
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 644
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/apn/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 648
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, ","

    .line 649
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 651
    array-length p2, p1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, p1, v2

    .line 652
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 653
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "apnTypesMatch: true because match found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
    :cond_3
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string p1, "apnTypesMatch: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bearer_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1181
    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 1183
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "LTE"

    .line 1184
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "4G"

    .line 1185
    aput-object v4, v0, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 1189
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 1192
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1198
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static bitmaskHasTech(II)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method private changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "\'"

    const-string v0, "\'\'"

    .line 2463
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2046
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const-string p0, "1"

    .line 2448
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "2"

    .line 2450
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "default"

    return-object p0

    :cond_1
    const-string p0, "3"

    .line 2452
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "mms"

    return-object p0

    :cond_2
    const-string p0, "4"

    .line 2454
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "supl"

    return-object p0

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    const-string p0, "*"

    return-object p0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2030
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private checkNullArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private checkNullforMvnoValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2037
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->apn_not_set_for_mvno:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private deleteApn()V
    .locals 13

    .line 1993
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1997
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 1998
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "ApnEditor"

    const-string v6, "Deleting APN  succeeded"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x0

    .line 2002
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "ApnEditor"

    const-string v12, "Deleting APN  failed"

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2008
    :goto_0
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    :cond_1
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    .line 733
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "disableAllFields"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 742
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 743
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 746
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 747
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 748
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 755
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 4

    .line 720
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 721
    invoke-direct {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 723
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableAllFields()V
    .locals 2

    .line 770
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "enableAllFields"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 774
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 778
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 780
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 784
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 785
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 788
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 789
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 790
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 791
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 586
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 587
    invoke-static {p0}, Lcom/android/settings/network/apn/ApnEditor;->getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static getBitmaskForTech(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "%02d"

    return-object p0

    :cond_0
    const-string p0, "%03d"

    return-object p0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 2

    .line 668
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_10
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 696
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    return-object p0

    .line 682
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 686
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 674
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 678
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 694
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 676
    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 670
    :pswitch_7
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 688
    :pswitch_8
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 692
    :pswitch_9
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 690
    :pswitch_a
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 672
    :pswitch_b
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 709
    :pswitch_c
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 680
    :pswitch_d
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 698
    :pswitch_e
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    return-object p0

    .line 700
    :pswitch_f
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    return-object p0

    .line 705
    :pswitch_10
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    return-object p0

    .line 702
    :pswitch_11
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    return-object p0

    .line 684
    :pswitch_12
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    return-object p0

    .line 707
    :pswitch_13
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRequiredApnType(Ljava/lang/String;)V
    .locals 9

    .line 2364
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeStyle:Z

    const-string v1, "default"

    if-eqz v0, :cond_16

    .line 2366
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->isDunExist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    .line 2367
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillUi()  mIsRequiredTypeDun "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->isImsExist()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeIms:Z

    .line 2369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillUi() mIsRequiredTypeIms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeIms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeIms:Z

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    if-eqz v3, :cond_0

    .line 2371
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    sget v3, Lcom/android/settings/R$array;->apn_ently_key_includeDUN_IMS:I

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 2372
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    sget v3, Lcom/android/settings/R$array;->apn_type_key_includeDUN_IMS:I

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 2373
    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    if-nez v2, :cond_1

    .line 2374
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    sget v3, Lcom/android/settings/R$array;->apn_ently_key_includeIMS:I

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 2375
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    sget v3, Lcom/android/settings/R$array;->apn_type_key_includeIMS:I

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 2376
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    if-eqz v2, :cond_2

    .line 2377
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    sget v3, Lcom/android/settings/R$array;->apn_ently_key_includeDUN:I

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 2378
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    sget v3, Lcom/android/settings/R$array;->apn_type_key_includeDUN:I

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 2382
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillUi(), APN type DB data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2385
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    const-string v2, "default,supl,xcap"

    const-string v3, "default,supl"

    const-string v4, "default,supl,mms"

    const-string v5, "*"

    const-string v6, "default,supl,mms,xcap"

    const-string/jumbo v7, "xcap"

    const-string/jumbo v8, "mms"

    if-eqz v0, :cond_f

    if-eqz p1, :cond_e

    .line 2387
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "default,supl,mms,dun,xcap"

    if-eqz v0, :cond_3

    .line 2388
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2389
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2390
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "dun"

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2391
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2392
    :cond_4
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2393
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    const-string p1, "default,supl,mms,ia"

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2394
    :cond_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2395
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    const-string p1, "default,supl,mms,dun"

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2396
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2397
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    const-string p1, "default,supl,dun,xcap"

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2398
    :cond_7
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2399
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2400
    :cond_8
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "supl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2401
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2402
    :cond_9
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2403
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    const-string p1, "default,mms"

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2404
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2405
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    const-string p1, "default,supl,dun"

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2406
    :cond_b
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2407
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2409
    :cond_c
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2412
    :cond_d
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2415
    :cond_e
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    if-eqz p1, :cond_15

    .line 2419
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2420
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2421
    :cond_10
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2422
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2423
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2424
    :cond_11
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2425
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2426
    :cond_12
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2427
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2429
    :cond_13
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2432
    :cond_14
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2435
    :cond_15
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2439
    :cond_16
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_17

    .line 2440
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 2442
    :cond_17
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 2

    .line 609
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 613
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "*"

    .line 614
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 615
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "hasAllApns: true because apnList.contains(APN_TYPE_ALL)"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 619
    :cond_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "hasAllApns: true"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private initApnEditorUi()V
    .locals 2

    .line 2089
    sget v0, Lcom/android/settings/R$xml;->apn_editor:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 2091
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->apn_not_set:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v0, "apn_name"

    .line 2092
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_apn"

    .line 2093
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_http_proxy"

    .line 2094
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_http_port"

    .line 2095
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_user"

    .line 2096
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_server"

    .line 2097
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_password"

    .line 2098
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_mms_proxy"

    .line 2099
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_mms_port"

    .line 2100
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_mmsc"

    .line 2101
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_mcc"

    .line 2102
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_mnc"

    .line 2103
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_type"

    .line 2104
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    const-string v0, "auth_type"

    .line 2105
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    const-string v0, "apn_protocol"

    .line 2106
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    const-string v0, "apn_roaming_protocol"

    .line 2107
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    const-string v0, "carrier_enabled"

    .line 2108
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const-string v0, "bearer_multi"

    .line 2109
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const-string/jumbo v0, "mvno_type"

    .line 2110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    const-string/jumbo v0, "mvno_match_data"

    .line 2111
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    const-string v0, "apn_type_list"

    .line 2114
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    return-void
.end method

.method private isDefinedApn(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "Exception caught  : "

    .line 2626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    new-array v7, v2, [Ljava/lang/String;

    .line 2635
    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v7, v9

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    .line 2636
    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    .line 2637
    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    .line 2638
    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    .line 2639
    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    .line 2640
    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    .line 2641
    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v7, v3

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "Telephony"

    .line 2645
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "numeric = ? AND name = ? AND apn = ? AND proxy = ? AND mmsproxy = ? AND port = ? AND mmsport = ? AND mmsc = ? AND type = ? AND protocol = ? AND roaming_protocol  = ? AND mvno_type = ? AND mvno_match_data  = ?"

    if-eqz v3, :cond_2

    .line 2646
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-interface {v3}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getDeviceSimSlotCnt()I

    move-result v3

    if-le v3, v9, :cond_1

    .line 2647
    iget v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    if-ne v3, v9, :cond_0

    .line 2648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND current1 = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2650
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND current = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v6, v3

    .line 2653
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v3, "CSC"

    .line 2654
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2655
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "content://telephony/carriers/no_update"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    .line 2659
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lt p0, v9, :cond_6

    .line 2660
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    move p0, v2

    :cond_4
    :try_start_2
    const-string v3, "edited"

    .line 2665
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2664
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v9, p0, :cond_5

    move p0, v9

    goto :goto_2

    :cond_5
    move p0, v2

    goto :goto_2

    :catch_0
    move-exception v3

    .line 2667
    :try_start_3
    sget-object v4, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    if-nez p0, :cond_6

    move v2, v9

    :cond_6
    if-eqz v1, :cond_7

    .line 2680
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 2677
    :try_start_4
    sget-object v3, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_7

    goto :goto_3

    .line 2682
    :cond_7
    :goto_4
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDefinedApn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_5
    if-eqz v1, :cond_8

    .line 2680
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2681
    :cond_8
    throw p0
.end method

.method private isDunExist()Z
    .locals 11

    .line 2510
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    .line 2511
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getNtcRawData(I)Ljava/lang/String;

    move-result-object v0

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2515
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2516
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "isDunExist() No numeric data"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v7, "numeric = ?"

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 2522
    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    .line 2525
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p0, "content://telephony/carriers/no_update"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2527
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Query databases to find dun type"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_1
    const-string/jumbo p0, "type"

    .line 2531
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2532
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "dun"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "default"

    .line 2533
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "TGY"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2534
    :cond_2
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Dun type is exist"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v10

    .line 2537
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :cond_4
    if-eqz v2, :cond_5

    .line 2546
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2548
    :cond_5
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDunExist() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2542
    :try_start_1
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught to query databases : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 2546
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return v3

    :goto_0
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2547
    :cond_7
    throw p0
.end method

.method private isEditable()Z
    .locals 9

    .line 2471
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2473
    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v5, "(name = ? AND numeric = ? AND apn = ? AND mvno_type = ?)"

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2477
    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x9

    .line 2478
    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v2, 0x2

    .line 2479
    invoke-virtual {v0, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x15

    .line 2480
    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x0

    .line 2484
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://telephony/carriers/no_update"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2486
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEditable count of cursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lt p0, v1, :cond_2

    .line 2488
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    move p0, v1

    :cond_1
    :try_start_1
    const-string v2, "1"

    const-string/jumbo v3, "user_editable"

    .line 2490
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 2491
    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    move p0, v1

    .line 2495
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportEditableMHENG()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, p0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 2503
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move v8, v1

    move-object v1, p0

    move p0, v8

    .line 2500
    :goto_2
    :try_start_2
    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 2503
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, p0

    .line 2505
    :cond_6
    :goto_3
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEditable  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_4
    if-eqz v0, :cond_7

    .line 2503
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2504
    :cond_7
    throw p0
.end method

.method private isImsExist()Z
    .locals 10

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2557
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "isImsExist() No numeric data"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v6, "numeric = ?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    .line 2563
    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    .line 2566
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "content://telephony/carriers/no_update"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2569
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "Query databases to find ims type"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    const-string/jumbo p0, "type"

    .line 2573
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2574
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ims"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2575
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "IMS type is exist"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    .line 2578
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :cond_3
    if-eqz v1, :cond_4

    .line 2587
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2589
    :cond_4
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImsExist() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2583
    :try_start_1
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught to query databases : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 2587
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v2

    :goto_0
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2588
    :cond_6
    throw p0
.end method

.method private isPredefined()Z
    .locals 9

    .line 2594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2599
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2601
    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v5, "(name = ? AND numeric = ? AND apn = ?)"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .line 2605
    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v6, v8

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x0

    .line 2608
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://telephony/carriers/no_update"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2611
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p0, v1, :cond_1

    move v8, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 2619
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2616
    :try_start_1
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2621
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPredefined : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :goto_2
    if-eqz v0, :cond_3

    .line 2619
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2620
    :cond_3
    throw p0
.end method

.method private synthetic lambda$updateApnDataToDatabase$0(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1910
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add a new apn to database "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1914
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1223
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1224
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-object v2

    .line 1229
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->mvno_type_entries:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1230
    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1232
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v7, "mvno_match_data"

    .line 1233
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 1234
    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_b

    .line 1235
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1236
    aget-object p1, v3, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 1239
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 1240
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object p1, v1

    .line 1244
    :cond_4
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1248
    :cond_5
    aget-object p1, v3, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_8

    .line 1249
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 1250
    invoke-virtual {p1, v4}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_6

    move-object v4, v1

    goto :goto_2

    .line 1252
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    .line 1254
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    :goto_3
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1257
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1259
    :cond_8
    aget-object p1, v3, v0

    const-string v4, "GID"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 1262
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 1263
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object p1, v1

    .line 1267
    :cond_9
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1269
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1273
    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1276
    :cond_b
    :goto_4
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMvnoMatchData : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :try_start_0
    aget-object p0, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;
    .locals 4

    .line 1159
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPV4"

    .line 1160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "IP"

    .line 1161
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    return-object v1

    .line 1165
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->apn_protocol_entries:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1167
    :try_start_0
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protocolDescription raw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "protocolIndex : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protocolDescription value : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    aget-object p0, p0, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private setLifecycleForAllControllers()V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 2013
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 2016
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p1, p0, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    const/16 v1, 0x2a

    .line 2018
    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2020
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 2014
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1905
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 13

    .line 854
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "fillUi() START!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillUi(), isFirstTime? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", newAPN? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 907
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const-string v5, ""

    const/4 v6, 0x0

    .line 925
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz p1, :cond_12

    .line 859
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v9, v8}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 860
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v9, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 861
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 862
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v9, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 863
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 864
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 865
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v11, 0x7

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 866
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v11, 0xc

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 867
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v11, 0xd

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 868
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v11, 0x9

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 870
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    iget-object v9, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 872
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v9, 0xf

    invoke-virtual {p1, v9}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->getRequiredApnType(Ljava/lang/String;)V

    .line 877
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const/4 v9, 0x0

    if-eqz p1, :cond_5

    .line 878
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v11, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 879
    invoke-virtual {p1, v11}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 883
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaHKTWModel()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    move-object v11, v9

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    if-nez p1, :cond_2

    move-object p1, v9

    goto :goto_2

    .line 896
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 884
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v11, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {p1, v11}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 886
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v3, :cond_4

    .line 888
    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 890
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v9

    move-object v11, p1

    .line 899
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 901
    iget-object v12, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v12, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 902
    iget-object v12, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v12, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 903
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 904
    iput-object v11, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 907
    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v11, 0xe

    invoke-virtual {p1, v11, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 909
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3

    .line 911
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaOpen()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_8

    .line 912
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    const-string/jumbo v9, "ril.simoperator"

    const-string v11, "ETC"

    invoke-interface {p1, v9, v1, v11}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CTC"

    .line 913
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Set AuthType for CTC"

    .line 914
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v10}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3

    .line 918
    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v9}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 922
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 923
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 924
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v1, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_a

    move v0, v8

    goto :goto_4

    :cond_a
    move v0, v6

    :goto_4
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 925
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    .line 927
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 928
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    .line 930
    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_d

    const-string v0, "0"

    .line 931
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move v1, v8

    :goto_5
    if-eqz v0, :cond_d

    and-int/lit8 v7, v0, 0x1

    if-ne v7, v8, :cond_c

    .line 937
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 944
    :cond_d
    :goto_6
    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_e
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 950
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    .line 953
    :cond_f
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    sget v0, Lcom/android/settings/R$array;->bearer_entries:I

    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->setEntries(I)V

    goto :goto_8

    .line 951
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    sget v0, Lcom/android/settings/R$array;->bearer_entries_dcm_kdi:I

    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->setEntries(I)V

    .line 955
    :goto_8
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 956
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 958
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMvnoTypeStr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMvnoMatchDataStr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 962
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 963
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isCanadaModal()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    const-string v0, "D2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 964
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 965
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    const-string v0, "302720x94"

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_9

    .line 967
    :cond_11
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 968
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 973
    :cond_12
    :goto_9
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 974
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 975
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 976
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 977
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 978
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 979
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 980
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 981
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 982
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 983
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 984
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 987
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeStyle:Z

    if-nez p1, :cond_13

    .line 988
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 990
    :cond_13
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeIms:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v7, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-static {p1, v0, v1, v7}, Lcom/samsung/android/settings/network/apn/ApnUtils;->checkNullApn(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 995
    :goto_a
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 997
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 998
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 1000
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->apn_auth_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1001
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1003
    :cond_14
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1006
    :goto_b
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    .line 1008
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    .line 1010
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    .line 1012
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNullforMvnoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1016
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Setting_ConfigEditingIpVersionType"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1017
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "true"

    if-nez v0, :cond_17

    .line 1018
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "protocolEdit : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1020
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_c

    :cond_15
    const-string v0, "Predefined"

    .line 1021
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->isPredefined()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1022
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_c

    .line 1024
    :cond_16
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1028
    :cond_17
    :goto_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Setting_EnableEditingIpVersionTypeRoaming"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1030
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "protocolRoamEdit : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1032
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_d

    .line 1034
    :cond_18
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1040
    :cond_19
    :goto_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->config_allow_edit_carrier_enabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 1043
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_27

    .line 1044
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isLraImsi(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_10

    .line 1052
    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isUSCSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1053
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    .line 1054
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1055
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_12

    .line 1056
    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1057
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsSprEditable:Z

    if-eqz v0, :cond_1e

    .line 1058
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    if-eqz v0, :cond_1c

    goto :goto_e

    .line 1062
    :cond_1c
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto/16 :goto_12

    .line 1059
    :cond_1d
    :goto_e
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable SPR Apn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    goto/16 :goto_12

    .line 1065
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_27

    .line 1067
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Edit by spr carreirs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iput-boolean v6, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    .line 1069
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto/16 :goto_12

    .line 1072
    :cond_1f
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportATTEditAPN()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1073
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsAttEditable:Z

    if-eqz v0, :cond_27

    .line 1074
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Test mode Edit by att"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    .line 1076
    iput-boolean v8, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    goto/16 :goto_12

    .line 1078
    :cond_20
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1079
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "US OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1081
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsVzwEditable:Z

    if-eqz v0, :cond_21

    .line 1082
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    goto :goto_f

    .line 1084
    :cond_21
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    .line 1085
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1087
    :goto_f
    iput-boolean v8, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    goto :goto_12

    .line 1088
    :cond_22
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isUSCSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1089
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    .line 1090
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_12

    .line 1091
    :cond_23
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1092
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsSprEditable:Z

    if-eqz v0, :cond_27

    .line 1093
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto :goto_12

    .line 1096
    :cond_24
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    if-nez v0, :cond_27

    .line 1097
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto :goto_12

    .line 1045
    :cond_25
    :goto_10
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsVzwEditable:Z

    if-eqz v0, :cond_26

    .line 1046
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    goto :goto_11

    .line 1048
    :cond_26
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    .line 1049
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1051
    :goto_11
    iput-boolean v8, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    .line 1103
    :cond_27
    :goto_12
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1104
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->getFixedApnType()Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1106
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1107
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_28
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_29

    const-string v0, "CSC"

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v8

    goto :goto_13

    :cond_29
    move v0, v6

    :goto_13
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    if-eqz p1, :cond_2a

    .line 1114
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_14

    .line 1116
    :cond_2a
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1121
    :goto_14
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Settings_ConfigDefinedApnProtocol"

    invoke-virtual {p1, v0, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_2c

    const-string v0, ","

    .line 1130
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1131
    array-length v1, v0

    if-ne v1, v8, :cond_2b

    .line 1132
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1134
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillUi() set protocol 1 values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1135
    :cond_2b
    array-length p1, v0

    if-ne p1, v4, :cond_2c

    .line 1136
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    aget-object v1, v0, v6

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1137
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    aget-object v1, v0, v8

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1139
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1140
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillUi() set protocol 2 values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_2c
    :goto_15
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillUi() mIsNoWarning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mEditable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSprEditable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsSprEditable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsVzwEditable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsVzwEditable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsAttEditable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsAttEditable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "fillUi() END!! "

    .line 1145
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;
    .locals 6

    .line 2251
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2258
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2259
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2251
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    .line 2261
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v0, :cond_2

    .line 2264
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get apnData from Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2268
    :cond_2
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$integer;->access_point_names_add:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    :goto_0
    return p0
.end method

.method getUserEnteredApnType()Ljava/lang/String;
    .locals 0

    .line 2053
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2054
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 388
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->setLifecycleForAllControllers()V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->initApnEditorUi()V

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    .line 396
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isKtSimInsert(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 401
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x0

    .line 402
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    const-string/jumbo v0, "user_edited_apn"

    .line 406
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    const-string/jumbo v0, "mdm_edited_apn"

    .line 409
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    const-string v0, "current_mnc"

    .line 412
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    const-string v0, "current_mcc"

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 417
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EditOption4ApnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "List"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 419
    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeStyle:Z

    goto :goto_0

    .line 421
    :cond_4
    iput-boolean v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeStyle:Z

    .line 423
    :goto_0
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApnTypeStyle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeStyle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeStyle:Z

    if-nez v3, :cond_5

    const-string v3, "apn_type_list"

    .line 426
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    const-string v3, "apn_type"

    .line 428
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 431
    :goto_1
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 432
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 433
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 436
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_DisableMenuBearerInApnEdit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Disable BearMulti menu"

    .line 438
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 441
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 444
    :goto_2
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    sget v4, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    sget v5, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "editable_mode"

    .line 454
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 455
    iput-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsVzwEditable:Z

    .line 456
    iput-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsSprEditable:Z

    .line 457
    iput-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsAttEditable:Z

    .line 460
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_7
    const-string/jumbo v5, "sub_id"

    const/4 v6, -0x1

    .line 465
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    if-le v5, v6, :cond_8

    .line 470
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    .line 472
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSubId : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mSimSlot : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 474
    iput-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 475
    iput-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v7, "android.intent.action.EDIT"

    .line 483
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 484
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 485
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edit request not for carrier table. Uri: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_9
    const-string v7, "android.intent.action.INSERT"

    .line 490
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 491
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    .line 492
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert request not for carrier table. Uri: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 497
    :cond_a
    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string/jumbo v4, "mvno_type"

    .line 498
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    const-string/jumbo v4, "mvno_match_data"

    .line 499
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    :cond_b
    if-eqz v5, :cond_c

    .line 509
    invoke-virtual {p0, v5}, Lcom/android/settings/network/apn/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    goto :goto_3

    .line 511
    :cond_c
    new-instance v3, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v4, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    .line 513
    :goto_3
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x19

    .line 514
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 513
    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v6, :cond_d

    move v3, v1

    goto :goto_4

    :cond_d
    move v3, v2

    .line 515
    :goto_4
    iput-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsCarrierIdApn:Z

    .line 517
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x17

    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 517
    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_e

    move v3, v1

    goto :goto_5

    :cond_e
    move v3, v2

    .line 520
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->isEditable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEditable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate: EDITED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_11

    .line 526
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v5, 0xf

    .line 527
    invoke-virtual {v4, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 528
    :cond_f
    invoke-static {}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isSupportEditableMHENG()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-boolean v3, Lcom/android/settings/network/apn/ApnEditor;->MHENG:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "onCreate: supportEditableAtMHENG"

    .line 529
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    const-string/jumbo v3, "onCreate: apnTypesMatch; read-only APN"

    .line 531
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    .line 533
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto :goto_6

    .line 535
    :cond_11
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 536
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->disableFields([Ljava/lang/String;)V

    :cond_12
    :goto_6
    move v0, v2

    .line 546
    :goto_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_13

    .line 547
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    if-nez p1, :cond_14

    move v2, v1

    .line 551
    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->fillUI(Z)V

    .line 553
    new-instance p1, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    .line 556
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 501
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 1401
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1403
    sget-object p2, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateOptions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 1405
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_d

    .line 1406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v3}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isLraImsi(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v3}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getOmcNWSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VZW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1410
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1411
    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsSprEditable:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {p2, v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1412
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_1
    const-string p2, "CSC"

    .line 1413
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->isSPRNetworkUnLocked(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    sget-boolean p0, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    if-eqz p0, :cond_d

    .line 1414
    :cond_3
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1416
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "USC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "LTE INTERNET"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {v0, v4}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isUSCSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1417
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    .line 1418
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1419
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1420
    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsVzwEditable:Z

    if-eqz p2, :cond_6

    .line 1421
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1422
    :cond_6
    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsSprEditable:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {p2, v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1423
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1424
    :cond_7
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {p2, v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isUSCSimInserted(I)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1425
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1427
    :cond_8
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {p2, v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isVZWSimInserted(I)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-interface {p2, p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isSPRSimInserted(I)Z

    move-result p0

    if-nez p0, :cond_d

    .line 1428
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1431
    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1432
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ctnet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "do not add delete for china open CTNET(CTC) by CTC requirement: "

    .line 1433
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1435
    :cond_a
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1438
    :cond_b
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1407
    :cond_c
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsVzwEditable:Z

    if-eqz p0, :cond_d

    .line 1408
    sget p0, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v2, v1, v2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_d
    :goto_1
    const/4 p0, 0x2

    .line 1441
    sget p2, Lcom/android/settings/R$string;->menu_save:I

    invoke-interface {p1, v2, p0, v2, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_e
    const/4 p0, 0x3

    .line 1443
    sget p2, Lcom/android/settings/R$string;->menu_cancel:I

    invoke-interface {p1, v2, p0, v2, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 841
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 842
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1506
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    return p3

    .line 1509
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1510
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1461
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const v2, 0x102002c

    if-eq v0, v2, :cond_1

    .line 1484
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe23

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 1481
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    .line 1471
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe11

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 1473
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1474
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return v1

    .line 1463
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->deleteApn()V

    .line 1464
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAirplaneModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 834
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 1288
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1289
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->KEY_APN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 1290
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ATT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "IMS"

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "phone"

    .line 1293
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "wap.cingular"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "pta"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "nxtgenphone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ims"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "enhancedphone"

    .line 1294
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "firstnet-phone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ndo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "endo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 1297
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "rcsstreaming.lguplus.co.kr"

    .line 1299
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "youtubechatbot"

    .line 1300
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "zrate.sktelecom.com"

    .line 1301
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1303
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isKtSimInsert(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ims.ktfwing.com"

    .line 1304
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "tethering.ktfwing.com"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1306
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "internet"

    .line 1307
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "tethering"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    :goto_0
    move v5, v3

    goto :goto_1

    .line 1312
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, ".au-net.ne.jp"

    .line 1313
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move v5, v4

    .line 1318
    :goto_1
    sget-object v6, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apn_apn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    const/16 p1, 0xa

    .line 1321
    invoke-static {p0, p1}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/apn/ApnEditor;I)V

    return v4

    :cond_6
    if-eqz p2, :cond_7

    .line 1326
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    const-string v1, "auth_type"

    .line 1329
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1331
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1332
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 1334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$array;->apn_auth_entries:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 1335
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    return v4

    :cond_9
    const-string v5, "apn_type_list"

    .line 1339
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1341
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1342
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1343
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    goto :goto_3

    .line 1345
    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeIms:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsRequiredTypeDun:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/network/apn/ApnUtils;->checkNullApn(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    .line 1348
    :goto_3
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    const-string v5, "apn_protocol"

    .line 1357
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1358
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    return v4

    .line 1362
    :cond_c
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    const-string v6, "apn_roaming_protocol"

    .line 1364
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1365
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    return v4

    .line 1369
    :cond_e
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string v7, "bearer_multi"

    .line 1371
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1372
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    return v4

    .line 1376
    :cond_10
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 1377
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_11
    const-string/jumbo v8, "mvno_type"

    .line 1378
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1379
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    return v4

    .line 1383
    :cond_12
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1384
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1385
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->checkNullforMvnoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_13
    const-string v4, "apn_password"

    .line 1386
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1387
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    if-eqz p2, :cond_14

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_14
    const-string p2, ""

    :goto_4
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_15
    const-string v4, "carrier_enabled"

    .line 1388
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1389
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_5

    :cond_16
    if-eqz p2, :cond_17

    .line 1392
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_17
    invoke-direct {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1395
    :cond_18
    :goto_5
    iput-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    return v3
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 2689
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apn_name"

    .line 2690
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2691
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe12

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "apn_apn"

    .line 2692
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2693
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe13

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "apn_http_proxy"

    .line 2694
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2695
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe14

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "apn_http_port"

    .line 2696
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2697
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe15

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "apn_user"

    .line 2698
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2699
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe16

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "apn_password"

    .line 2700
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2701
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "apn_server"

    .line 2702
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2703
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "apn_mmsc"

    .line 2704
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2705
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "apn_mms_proxy"

    .line 2706
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2707
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "apn_mms_port"

    .line 2708
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2709
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1b

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "apn_mcc"

    .line 2710
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2711
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "apn_mnc"

    .line 2712
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2713
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1d

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "apn_type_list"

    .line 2714
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xe1f

    if-eqz v1, :cond_c

    .line 2715
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "apn_type"

    .line 2716
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2717
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "auth_type"

    .line 2718
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2719
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_e
    const-string v1, "apn_protocol"

    .line 2720
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2721
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_f
    const-string v1, "apn_roaming_protocol"

    .line 2722
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2723
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe21

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_10
    const-string v1, "carrier_enabled"

    .line 2724
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2725
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe22

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_11
    const-string v1, "bearer_multi"

    .line 2726
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2727
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe24

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_12
    const-string/jumbo v1, "mvno_type"

    .line 2728
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2729
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe25

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_13
    const-string/jumbo v1, "mvno_match_data"

    .line 2730
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2731
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe26

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 2733
    :cond_14
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 809
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 811
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mAirplaneModeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 810
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 813
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 814
    iput-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mFirstTime:Z

    .line 815
    invoke-virtual {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->fillUI(Z)V

    .line 816
    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    .line 820
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 821
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 822
    instance-of v2, v0, Landroidx/preference/SecEditTextPreference;

    if-eqz v2, :cond_1

    .line 823
    check-cast v0, Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x4001

    .line 825
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 826
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1208
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 1210
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    const-string/jumbo v1, "user_edited_apn"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1213
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    const-string/jumbo v1, "mdm_edited_apn"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1216
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    const-string v1, "current_mnc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    const-string v0, "current_mcc"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1490
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1491
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    .line 1492
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1493
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 574
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 0

    .line 1556
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p4, :cond_1

    .line 1564
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 1566
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return p0
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    .line 1530
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p4, :cond_2

    .line 1538
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 1539
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    .line 1542
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method showError()V
    .locals 0

    .line 1989
    invoke-static {p0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/apn/ApnEditor;)V

    return-void
.end method

.method validateAndSaveApnData()Z
    .locals 18

    move-object/from16 v6, p0

    .line 1583
    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    const/4 v7, 0x1

    .line 1807
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v0, :cond_0

    .line 1584
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Read Only Apn Skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1588
    :cond_0
    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    if-nez v0, :cond_1

    .line 1589
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "mHasUserEditedApn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1593
    :cond_1
    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 1594
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "mHasMdmEditedApn / mHasUserEditedApn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1598
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    const/4 v9, -0x1

    const/16 v10, 0x17

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mIsSprEditable:Z

    if-nez v0, :cond_3

    .line 1599
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1601
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "carrier edit 4, do not update apn!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1614
    :cond_3
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1615
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1616
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1617
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1619
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 1621
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->showError()V

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 1624
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "ApnEditor"

    const-string v6, "Saving APN  failed"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v15

    .line 1633
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isRestrictedApnTypeDun(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1635
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1636
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1637
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "dun Error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 1638
    invoke-static {v6, v0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/apn/ApnEditor;I)V

    return v15

    .line 1644
    :cond_5
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1647
    iget-boolean v4, v6, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const/16 v16, 0x1

    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v3, v11

    move-object/from16 v17, v5

    move/from16 v5, v16

    .line 1648
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/4 v5, 0x2

    const-string v2, "apn"

    move-object/from16 v1, v17

    move-object v3, v12

    .line 1654
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1660
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    .line 1662
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    .line 1660
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1666
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    .line 1668
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    .line 1666
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1672
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    .line 1674
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    .line 1672
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1678
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    .line 1680
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    .line 1678
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1684
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    .line 1686
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    .line 1684
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1690
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    .line 1692
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    .line 1690
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1696
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    .line 1698
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    .line 1696
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1702
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    .line 1704
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    .line 1702
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1708
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1712
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    const-string v2, "authtype"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    .line 1710
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v4, v0

    .line 1717
    :cond_6
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    .line 1719
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    const-string/jumbo v2, "protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    .line 1717
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1723
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    .line 1725
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, p0

    .line 1723
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1731
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    .line 1729
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1737
    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeStyle:Z

    const-string v1, ",xcap"

    const-string/jumbo v2, "xcap"

    const-string v3, "default"

    if-nez v0, :cond_a

    .line 1738
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1739
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v5, 0xf

    const-string/jumbo v2, "type"

    const-string v3, "default,mms,supl"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    .line 1740
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto/16 :goto_0

    .line 1745
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanSBMModel()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v5, 0xf

    const-string/jumbo v2, "type"

    const-string v3, "default,mms,supl,xcap"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    .line 1746
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto/16 :goto_0

    .line 1751
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanSBMModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1752
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    const/16 v12, 0xf

    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v3, v5

    move v5, v12

    .line 1759
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_0

    .line 1766
    :cond_a
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1767
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateAndSaveApnData checkNotSetApn("

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnTypeList:Landroidx/preference/SecListPreference;

    invoke-virtual {v10}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanSBMModel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1769
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_0

    :cond_b
    const/16 v10, 0xf

    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v3, v5

    move v5, v10

    .line 1776
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    :goto_0
    move v4, v0

    const/16 v5, 0x9

    const-string/jumbo v2, "mcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v3, v13

    .line 1785
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const/16 v5, 0xa

    const-string/jumbo v2, "mnc"

    move-object v3, v14

    .line 1791
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "numeric"

    move-object/from16 v10, v17

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1800
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1802
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result v0

    const-string/jumbo v1, "sim_slot"

    if-eqz v0, :cond_c

    iget v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    if-ne v0, v7, :cond_c

    const-string v0, "current1"

    .line 1804
    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1805
    invoke-virtual {v10, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_c
    const-string v0, "current"

    .line 1807
    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1808
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1816
    :cond_d
    :goto_1
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    .line 1818
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v15

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1819
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    move v12, v15

    goto :goto_3

    .line 1823
    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnEditor;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_2

    :cond_f
    move v12, v1

    :goto_3
    const/16 v5, 0x13

    const-string v2, "bearer_bitmask"

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v12

    .line 1826
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    if-eqz v12, :cond_11

    .line 1833
    iget v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_10

    goto :goto_4

    .line 1835
    :cond_10
    invoke-static {v12, v0}, Lcom/android/settings/network/apn/ApnEditor;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1836
    iget v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    move v3, v0

    goto :goto_5

    :cond_11
    :goto_4
    move v3, v15

    :goto_5
    const/16 v5, 0x12

    const-string v2, "bearer"

    move-object/from16 v0, p0

    move-object v1, v10

    .line 1843
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    .line 1849
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    .line 1851
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    const-string/jumbo v2, "mvno_type"

    move-object/from16 v0, p0

    .line 1849
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1855
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    .line 1857
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    const-string/jumbo v2, "mvno_match_data"

    move-object/from16 v0, p0

    .line 1855
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1861
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const-string v12, "edited"

    if-eqz v0, :cond_12

    .line 1862
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1863
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edited : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_12

    .line 1865
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1871
    :cond_12
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    move-object v1, v10

    .line 1869
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1875
    invoke-virtual {v10, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1877
    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x2

    .line 1879
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "roaming"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_13
    const-string v1, "CSC"

    .line 1882
    invoke-direct {v6, v1}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string v2, "Telephony"

    if-eqz v1, :cond_14

    invoke-direct {v6, v2}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    if-nez v1, :cond_17

    invoke-direct {v6, v2}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1883
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1884
    invoke-static {v6, v15}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/apn/ApnEditor;I)V

    .line 1886
    :cond_16
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "validateAndSaveApnData() show ERROR_DIALOG_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_17
    if-eqz v0, :cond_19

    .line 1891
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_6

    :cond_18
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1893
    :goto_6
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateApnDataToDatabase values : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateApnDataToDatabase uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-direct {v6, v0, v10}, Lcom/android/settings/network/apn/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_7

    .line 1898
    :cond_19
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "validateAndSaveApnData: not calling update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return v7
.end method

.method validateApnData()Ljava/lang/String;
    .locals 11

    .line 1929
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1931
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1932
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1936
    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 1938
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v5, :cond_0

    .line 1939
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const v7, 0xffff

    const/4 v8, 0x2

    if-le v4, v7, :cond_1

    .line 1943
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v9, Lcom/android/settings/R$string;->error_message_port_out_of_range:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v9, v8, [Ljava/lang/Object;

    .line 1944
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v5

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "CSC"

    .line 1945
    invoke-direct {p0, v4}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    if-nez v4, :cond_3

    const-string v4, "Telephony"

    invoke-direct {p0, v4}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1946
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/settings/R$string;->apn_already_exists:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1950
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsCarrierIdApn:Z

    if-eqz v7, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1951
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v6

    .line 1952
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1953
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_name_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1954
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1955
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_apn_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    .line 1957
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "validateApnData: carrier id APN does not have mcc/mnc defined"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_a

    .line 1959
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    .line 1961
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    if-eq v0, v8, :cond_b

    .line 1962
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_mnc_not23:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 1960
    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->error_mcc_not3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_b
    :goto_4
    if-nez v4, :cond_e

    .line 1968
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1969
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1971
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v2, v1

    move v3, v6

    :goto_5
    if-ge v3, v2, :cond_c

    aget-object v4, v1, v3

    .line 1972
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    sget-object v7, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateApnData: appending type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1976
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v8, :cond_d

    .line 1977
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1979
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->error_adding_apn_type:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_e
    return-object v4
.end method
