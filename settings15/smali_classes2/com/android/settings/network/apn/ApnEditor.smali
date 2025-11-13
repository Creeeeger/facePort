.class public Lcom/android/settings/network/apn/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/apn/ApnEditor$ApnData;,
        Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field public static final APN_TYPES:[Ljava/lang/String;

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field static final MENU_DELETE:I = 0x1

.field public static final MHSDBG:Z

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field static final PROTOCOL_INDEX:I = 0x10

.field static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field static final TYPE_INDEX:I = 0xf

.field static sNotSet:Ljava/lang/String;

.field public static final sProjection:[Ljava/lang/String;


# instance fields
.field public final KEY_APN:Ljava/lang/String;

.field public final mAirplaneModeEnabledObserver:Lcom/android/settings/network/apn/ApnEditor$1;

.field mApn:Landroidx/preference/SecEditTextPreference;

.field mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

.field public mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

.field mApnType:Landroidx/preference/SecEditTextPreference;

.field mAuthType:Landroidx/preference/SecListPreference;

.field public mBearerInitialVal:I

.field mBearerMulti:Landroidx/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroidx/preference/SwitchPreference;

.field public mCarrierUri:Landroid/net/Uri;

.field public mCurMcc:Ljava/lang/String;

.field public mCurMnc:Ljava/lang/String;

.field mDefaultApnProtocol:Ljava/lang/String;

.field mDefaultApnRoamingProtocol:Ljava/lang/String;

.field mDefaultApnTypes:[Ljava/lang/String;

.field public mEditable:Z

.field public mHasMdmEditedApn:Z

.field public mHasUserEditedApn:Z

.field public mHotSwapReceiver:Lcom/android/settings/network/apn/ApnEditor$2;

.field public mHotSwapStateFilter:Landroid/content/IntentFilter;

.field public mIsCarrierIdApn:Z

.field public mIsEditableMode:Z

.field public mIsNoWarning:Z

.field mMcc:Landroidx/preference/SecEditTextPreference;

.field mMmsPort:Landroidx/preference/SecEditTextPreference;

.field mMmsProxy:Landroidx/preference/SecEditTextPreference;

.field mMmsc:Landroidx/preference/SecEditTextPreference;

.field mMnc:Landroidx/preference/SecEditTextPreference;

.field mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

.field public mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroidx/preference/SecListPreference;

.field public mMvnoTypeStr:Ljava/lang/String;

.field mName:Landroidx/preference/SecEditTextPreference;

.field public mNewApn:Z

.field mPassword:Landroidx/preference/SecEditTextPreference;

.field mPort:Landroidx/preference/SecEditTextPreference;

.field mProtocol:Landroidx/preference/SecListPreference;

.field mProxy:Landroidx/preference/SecEditTextPreference;

.field mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field public mReadOnlyApn:Z

.field public mReadOnlyApnFields:[Ljava/lang/String;

.field mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Landroidx/preference/SecListPreference;

.field public mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

.field mServer:Landroidx/preference/SecEditTextPreference;

.field public mSimSlot:I

.field public mSubId:I

.field mUser:Landroidx/preference/SecEditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-class v0, Lcom/android/settings/network/apn/ApnEditor;

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

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v10, "ia"

    const-string v11, "emergency"

    const-string v2, "default"

    const-string v3, "mms"

    const-string v4, "supl"

    const-string v5, "dun"

    const-string v6, "hipri"

    const-string v7, "fota"

    const-string v8, "ims"

    const-string v9, "cbs"

    const-string v12, "mcx"

    const-string v13, "xcap"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    const-string v23, "mvno_match_data"

    const-string v24, "edited"

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "proxy"

    const-string v5, "port"

    const-string v6, "user"

    const-string v7, "server"

    const-string v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string v16, "type"

    const-string v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v25, "user_editable"

    const-string v26, "carrier_id"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "apn_apn"

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->KEY_APN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    iput v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    iput v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/apn/ApnEditor$1;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAirplaneModeEnabledObserver:Lcom/android/settings/network/apn/ApnEditor$1;

    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnEditor$2;-><init>(Lcom/android/settings/network/apn/ApnEditor;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnEditor$2;

    return-void
.end method

.method public static apnTypesMatch(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    const-string v3, "ApnEditor"

    if-eqz p1, :cond_5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_4

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "apnTypesMatch: true because match found for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string p0, "apnTypesMatch: false"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "*"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "hasAllApns: true because apnList.contains(APN_TYPE_ALL)"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string p0, "hasAllApns: true"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2
.end method

.method public static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static checkNullArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "%02d"

    goto :goto_0

    :cond_0
    const-string v1, "%03d"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    const/16 v2, 0x2a

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    move v3, v2

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    if-eqz v4, :cond_1

    iget-object v6, v5, Landroidx/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    array-length v6, v6

    sub-int/2addr v6, v2

    :goto_1
    if-ltz v6, :cond_2

    iget-object v7, v5, Landroidx/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    const/4 v6, -0x1

    :goto_2
    if-eqz v3, :cond_3

    :try_start_0
    aget-object v4, v0, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final disableAllFields()V
    .locals 2

    const-string v0, "ApnEditor"

    const-string v1, "disableAllFields"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public final enableAllFields()V
    .locals 2

    const-string v0, "ApnEditor"

    const-string v1, "enableAllFields"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public fillUI(Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "fillUi, isFirstTime: "

    const-string v3, ", newAPN: "

    invoke-static {v2, v3, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApnEditor"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v10, 0x1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v11, v10}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v11, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v11, v8}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v13, 0x6

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v13, 0x7

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v13, 0xc

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v13, 0xd

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    iget-object v11, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v13, 0xf

    invoke-virtual {v11, v13}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string v11, ""

    const-string v13, "CTC"

    const-string v14, "ETC"

    const-string v15, "ril.simoperator"

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v7, v0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {v1, v7}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaHKTWModel()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    if-nez v1, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object/from16 v18, v6

    goto/16 :goto_7

    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v7, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimOperator(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1, v7, v15, v14}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const-string v2, " : "

    const-string v5, "SecSimFeatureProvider"

    if-eqz v17, :cond_5

    const-string v16, "46003"

    :goto_3
    move-object/from16 v18, v6

    :cond_4
    :goto_4
    move-object/from16 v1, v16

    goto/16 :goto_6

    :cond_5
    const-string v12, "CTCMO"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v16, "45502"

    goto :goto_3

    :cond_6
    const-string v12, "CTG"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v16, "45431"

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSupportGlobalRoamingLRA(I)Z

    move-result v9

    const-string v12, "gsm.apn.sim.operator.numeric"

    if-eqz v9, :cond_9

    invoke-virtual {v1, v7, v12, v11}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v8, "simNumericLRA : "

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isLRASimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "311480"

    move-object/from16 v16, v1

    goto :goto_3

    :cond_8
    move-object/from16 v16, v9

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v8

    const-string v9, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v8, v7, v9, v11, v10}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    const-string v9, "-ACG-GLB"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v10

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v6

    const-string v6, "isSupportGlobalRoamingACG : "

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v8, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4

    invoke-virtual {v1, v7, v12, v11}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "getSimNumeric : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-le v2, v5, :cond_b

    const/4 v2, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v6

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2, v7}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    goto :goto_8

    :cond_c
    move-object/from16 v18, v6

    :cond_d
    :goto_8
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    iget-object v5, v0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v5, v1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    :cond_e
    :goto_9
    const/4 v5, 0x0

    goto :goto_a

    :cond_f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaOpen()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v5, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v5, v15, v14}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Set AuthType for CTC"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_9

    :cond_11
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_a
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x11

    invoke-virtual {v6, v9, v8}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_12

    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v1, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v6, 0x12

    move-object/from16 v7, v18

    invoke-virtual {v1, v6, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v8, 0x13

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_13

    iget v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v6, :cond_15

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    const/4 v7, 0x1

    :goto_c
    if-eqz v6, :cond_15

    const/4 v8, 0x1

    and-int/lit8 v9, v6, 0x1

    if-ne v9, v8, :cond_14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    shr-int/2addr v6, v8

    add-int/2addr v7, v8

    goto :goto_c

    :cond_15
    :goto_d
    iget v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-eqz v6, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v6, v1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v1, Landroidx/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_f

    :cond_18
    :goto_e
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v1, Landroidx/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    :goto_f
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v7, 0x16

    invoke-virtual {v6, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v6, :cond_19

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "mMvnoTypeStr "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "mMvnoMatchDataStr "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-static {v1, v6, v3}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1a
    const/4 v5, 0x0

    :goto_10
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    iget-object v6, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    if-eqz v6, :cond_1b

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {v6, v1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    aget-object v1, v6, v1

    invoke-virtual {v7, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_1b
    sget-object v6, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_11
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    iget-object v6, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    iget-object v6, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    iget-object v6, v1, Landroidx/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {v0, v6}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    iget-object v6, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object v6, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f14034c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move-object v6, v7

    :cond_1c
    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v6, "CscFeature_Setting_EnableEditingIpVersionTypeRoaming"

    invoke-virtual {v1, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "protocolRoamEdit : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_12

    :cond_1d
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1e
    :goto_12
    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-static {v1}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isLraImsi(I)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    const/4 v1, 0x1

    goto/16 :goto_16

    :cond_20
    const-string v1, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isUSCSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_18

    :cond_21
    const/4 v6, 0x2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-boolean v1, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    if-eqz v1, :cond_22

    goto :goto_13

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto/16 :goto_18

    :cond_23
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enable SPR Apn : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/settings/network/apn/ApnEditor;->MHSDBG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    goto/16 :goto_18

    :cond_24
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2e

    const-string v1, "Edit by spr carreirs"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto/16 :goto_18

    :cond_25
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_14

    :sswitch_0
    const-string v4, "ATT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_14

    :cond_26
    move v2, v6

    goto :goto_14

    :sswitch_1
    const-string v4, "APP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_14

    :cond_27
    const/4 v2, 0x1

    goto :goto_14

    :sswitch_2
    const-string v4, "AIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_14

    :cond_28
    const/4 v2, 0x0

    :goto_14
    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "US OPEN"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    const/4 v2, 0x1

    goto :goto_15

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_15
    iput-boolean v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    goto :goto_18

    :cond_2a
    const/4 v2, 0x1

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isUSCSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_18

    :cond_2b
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    if-eqz v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto :goto_18

    :cond_2c
    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    if-nez v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto :goto_18

    :pswitch_0
    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    if-eqz v1, :cond_2e

    const-string v1, "Test mode Edit by att"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    goto :goto_18

    :goto_16
    iget-boolean v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    if-eqz v2, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->enableAllFields()V

    goto :goto_17

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_17
    iput-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    :cond_2e
    :goto_18
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    iget-object v2, v2, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v9, "default,supl"

    goto :goto_19

    :cond_2f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v9, "default,supl,hipri"

    goto :goto_19

    :cond_30
    move-object v9, v5

    :goto_19
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1, v9}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_31
    iget-boolean v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez v1, :cond_32

    const-string v1, "CSC"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v2, 0x1

    goto :goto_1a

    :cond_32
    const/4 v2, 0x0

    :goto_1a
    iput-boolean v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 v2, 0x0

    goto :goto_1b

    :cond_33
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1b
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    const-string v5, "CarrierFeature_Settings_ConfigDefinedApnProtocol"

    invoke-virtual {v1, v4, v5, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_34

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    const-string v2, "IPV4V6"

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    iget-object v4, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    iget-object v2, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "fillUi() set protocol values IPV4V6"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fillUi() mIsNoWarning : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEditable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsEditableMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fillUi() END!! "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

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

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "ApnEditor"

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get apnData from Uri "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public getCarrierCustomizedConfig(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "read_only_apn_types_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ApnEditor"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: read only APN type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "read_only_apn_fields_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v0, "apn_settings_default_apn_types_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: default apn types: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "apn.settings_default_protocol_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: default apn protocol: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "apn.settings_default_roaming_protocol_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: default apn roaming protocol: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p0, "allow_adding_apns_bool"

    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "onCreate: not allow to add new APN"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xe10

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    :goto_0
    return p0
.end method

.method public getUserEnteredApnType()Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    iget-object p0, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v5, p0, v4

    const-string v6, "dun"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "ia"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "emergency"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "mcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    const-string v0, "getUserEnteredApnType: changed apn type to editable apn types: "

    const-string v1, "ApnEditor"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isDefinedApn(Ljava/lang/String;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Exception caught  : "

    const-string v3, "ApnEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    iget-object v5, v5, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    iget-object v5, v5, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    iget-object v4, v4, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    iget-object v4, v4, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    iget-object v4, v4, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v22

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "Telephony"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    const-string v21, "numeric = ? AND name = ? AND apn = ? AND proxy = ? AND mmsproxy = ? AND port = ? AND mmsport = ? AND mmsc = ? AND type = ? AND protocol = ? AND roaming_protocol  = ? AND mvno_type = ? AND mvno_match_data  = ?"

    if-eqz v6, :cond_2

    :try_start_1
    iget-object v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    check-cast v6, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "simSlotCnt : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SecSimFeatureProvider"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v6, v7, :cond_1

    iget v6, v0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    if-ne v6, v7, :cond_0

    const-string v6, "numeric = ? AND name = ? AND apn = ? AND proxy = ? AND mmsproxy = ? AND port = ? AND mmsport = ? AND mmsc = ? AND type = ? AND protocol = ? AND roaming_protocol  = ? AND mvno_type = ? AND mvno_match_data  = ? AND current1 = 1"

    :goto_0
    move-object/from16 v21, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    const-string v6, "numeric = ? AND name = ? AND apn = ? AND proxy = ? AND mmsproxy = ? AND port = ? AND mmsport = ? AND mmsc = ? AND type = ? AND protocol = ? AND roaming_protocol  = ? AND mvno_type = ? AND mvno_match_data  = ? AND current = 1"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v6, "CSC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v0, "content://telephony/carriers/no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :cond_3
    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v7, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    move v6, v4

    :cond_4
    :try_start_2
    const-string v0, "edited"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v7, v0, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    move v6, v4

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_4

    if-nez v6, :cond_6

    move v4, v7

    :cond_6
    if-eqz v5, :cond_7

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_5
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isDefinedApn : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :goto_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public isUserRestricted()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ApnEditor"

    if-nez v1, :cond_1

    const-string p0, "User is not an admin"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v1, "no_config_mobile_networks"

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "User is not allowed to configure mobile network"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v0
.end method

.method public final mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f03011d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    aget-object p1, v2, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object p1, v1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_5
    aget-object p1, v2, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {p1, v4}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_6

    move-object v4, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    aget-object p1, v2, v0

    const-string v4, "GID"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object p1, v1

    :cond_9
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_b
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mMvnoMatchData : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnEditor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    aget-object p0, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v3
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/4 v7, 0x0

    const-string v8, "mvno_match_data"

    const-string v9, "mvno_type"

    const-string v10, "carrier_enabled"

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->isUserRestricted()Z

    move-result v0

    const-string v13, "ApnEditor"

    if-eqz v0, :cond_0

    const-string v0, "This setting isn\'t available due to user restriction."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasActiveSim(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "there isn\'t active Sim Card"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    :cond_2
    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_3
    const-string v15, "sub_id"

    invoke-virtual {v0, v15, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    iput v15, v1, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    const v15, 0x7f17013b

    invoke-virtual {v1, v15}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v3, 0x7f14034b

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v3, "apn_name"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_apn"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_http_proxy"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_http_port"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_user"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_server"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_password"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_mms_proxy"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_mms_port"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_mmsc"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_mcc"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_mnc"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    const-string v3, "apn_type"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    const-string v3, "auth_type"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecListPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    const-string v3, "apn_protocol"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecListPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    const-string v3, "apn_roaming_protocol"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecListPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v1, v10}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const-string v3, "bearer_multi"

    invoke-virtual {v1, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/MultiSelectListPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1, v9}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecListPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v1, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecEditTextPreference;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    sget-object v3, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v15, "need_search_icon_in_action_bar"

    invoke-virtual {v3, v15, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz v2, :cond_4

    const-string v3, "user_edited_apn"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    const-string v3, "mdm_edited_apn"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    const-string v3, "current_mnc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    const-string v3, "current_mcc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    :cond_4
    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    const v15, 0x7f1408bf

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const v4, 0x7f140d33

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v3, "editable_mode"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    iget v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    if-le v3, v11, :cond_5

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    iput v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mSubId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mSimSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-static {v3, v4, v13}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Edit request not for carrier table. Uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_6
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    sget-object v14, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v14}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Insert request not for carrier table. Uri: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_7
    iput-boolean v12, v1, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    move-object v0, v3

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v1, v0}, Lcom/android/settings/network/apn/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v4, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v0, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    :goto_0
    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x19

    invoke-virtual {v0, v14, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v11, :cond_a

    move v0, v12

    goto :goto_1

    :cond_a
    move v0, v7

    :goto_1
    iput-boolean v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mIsCarrierIdApn:Z

    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x17

    invoke-virtual {v0, v14, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v12, :cond_b

    move v4, v12

    goto :goto_2

    :cond_b
    move v4, v7

    :goto_2
    const-string v0, "isEditable count of cursor : "

    iget-object v14, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v14, v12}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    const-string v15, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v14, v15, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_c
    const-string v19, "(name = ? AND numeric = ? AND apn = ? AND mvno_type = ?)"

    invoke-static {v14}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v15, v6}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v15, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v5, 0x2

    invoke-virtual {v15, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v5, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/network/apn/ApnEditor;->checkNullArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v14, v15, v5}, [Ljava/lang/String;

    move-result-object v20

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v3, "content://telephony/carriers/no_update"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_e

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v12, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_e

    move v5, v12

    :cond_d
    :try_start_2
    const-string v0, "1"

    const-string v6, "user_editable"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_d

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move v5, v12

    goto :goto_5

    :cond_e
    move v5, v12

    :goto_3
    if-eqz v3, :cond_f

    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move v5, v12

    const/4 v3, 0x0

    :goto_5
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception caught  : "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_f
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isEditable  : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mEditable :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onCreate: EDITED "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_11

    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const-string v0, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, v1, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto/16 :goto_b

    :cond_11
    const/16 v4, 0xf

    :cond_12
    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v1, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    array-length v3, v0

    move v5, v7

    :goto_7
    if-ge v5, v3, :cond_29

    aget-object v6, v0, v5

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "disable apnFields: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_8
    move v6, v11

    goto/16 :goto_9

    :sswitch_0
    const-string v14, "authtype"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_8

    :cond_13
    const/16 v6, 0x14

    goto/16 :goto_9

    :sswitch_1
    const-string v14, "password"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_8

    :cond_14
    const/16 v6, 0x13

    goto/16 :goto_9

    :sswitch_2
    const-string v14, "mmsport"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_8

    :cond_15
    const/16 v6, 0x12

    goto/16 :goto_9

    :sswitch_3
    const-string v14, "proxy"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_8

    :cond_16
    const/16 v6, 0x11

    goto/16 :goto_9

    :sswitch_4
    const-string v14, "user"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_8

    :cond_17
    const/16 v6, 0x10

    goto/16 :goto_9

    :sswitch_5
    const-string v14, "type"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_8

    :cond_18
    move v6, v4

    goto/16 :goto_9

    :sswitch_6
    const-string v14, "port"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_8

    :cond_19
    const/16 v6, 0xe

    goto/16 :goto_9

    :sswitch_7
    const-string v14, "name"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_8

    :cond_1a
    const/16 v6, 0xd

    goto/16 :goto_9

    :sswitch_8
    const-string v14, "mmsc"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_8

    :cond_1b
    const/16 v6, 0xc

    goto/16 :goto_9

    :sswitch_9
    const-string v14, "mnc"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_8

    :cond_1c
    const/16 v6, 0xb

    goto/16 :goto_9

    :sswitch_a
    const-string v14, "mcc"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto/16 :goto_8

    :cond_1d
    const/16 v6, 0xa

    goto/16 :goto_9

    :sswitch_b
    const-string v14, "apn"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto/16 :goto_8

    :cond_1e
    const/16 v6, 0x9

    goto/16 :goto_9

    :sswitch_c
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto/16 :goto_8

    :cond_1f
    const/16 v6, 0x8

    goto/16 :goto_9

    :sswitch_d
    const-string v14, "server"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto/16 :goto_8

    :cond_20
    const/4 v6, 0x7

    goto :goto_9

    :sswitch_e
    const-string v14, "protocol"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_8

    :cond_21
    const/4 v6, 0x6

    goto :goto_9

    :sswitch_f
    const-string v14, "roaming_protocol"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto/16 :goto_8

    :cond_22
    const/4 v6, 0x5

    goto :goto_9

    :sswitch_10
    const-string v14, "bearer_bitmask"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto/16 :goto_8

    :cond_23
    const/4 v6, 0x4

    goto :goto_9

    :sswitch_11
    const-string v14, "bearer"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    goto/16 :goto_8

    :cond_24
    const/4 v6, 0x3

    goto :goto_9

    :sswitch_12
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto/16 :goto_8

    :cond_25
    const/4 v6, 0x2

    goto :goto_9

    :sswitch_13
    const-string v14, "mmsproxy"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto/16 :goto_8

    :cond_26
    move v6, v12

    goto :goto_9

    :sswitch_14
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto/16 :goto_8

    :cond_27
    move v6, v7

    :goto_9
    packed-switch v6, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_a

    :pswitch_0
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    goto :goto_a

    :pswitch_1
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_2
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_3
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_4
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_5
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_6
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_7
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_8
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_9
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_a
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_b
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_c
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_d
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_e
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    goto :goto_a

    :pswitch_f
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    goto :goto_a

    :pswitch_10
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    goto :goto_a

    :pswitch_11
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    goto :goto_a

    :pswitch_12
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    goto :goto_a

    :pswitch_13
    iget-object v6, v1, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    :goto_a
    if-eqz v6, :cond_28

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_28
    add-int/2addr v5, v12

    goto/16 :goto_7

    :cond_29
    :goto_b
    move v0, v7

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/2addr v0, v12

    goto :goto_c

    :cond_2a
    if-nez v2, :cond_2b

    move v7, v12

    :cond_2b
    invoke-virtual {v1, v7}, Lcom/android/settings/network/apn/ApnEditor;->fillUI(Z)V

    return-void

    :goto_d
    if-eqz v3, :cond_2c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2c
    throw v0

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onCreateOptions : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string v1, "ApnEditor"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_b

    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez p2, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    iget-boolean v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    iget-object v3, v3, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    const-string v4, "CSC"

    invoke-virtual {p0, v4}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    iget-object v5, v5, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    const/16 v6, 0x17

    aget-object p0, p0, v6

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v6, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v6

    invoke-static {p2}, Lcom/samsung/android/settings/network/apn/ApnUtils;->isVZWConcept(I)Z

    move-result v7

    if-nez v7, :cond_7

    check-cast v6, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v6, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isLraImsi(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v6, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_8

    sget-boolean p0, Lcom/android/settings/Utils;->MHSDBG:Z

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "LTE INTERNET"

    if-eqz v4, :cond_3

    invoke-virtual {v6, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isUSCSimInserted(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isUSCSimInserted(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isVZWSimInserted(I)Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v6, p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSPRSimInserted(I)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "ctnet"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-nez p0, :cond_8

    const-string p0, "ApnUtils"

    const-string p2, "do not add delete for china open CTNET(CTC) by CTC requirement: "

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    :goto_0
    if-eqz v2, :cond_a

    :cond_8
    :goto_1
    const p0, 0x7f1417aa

    invoke-interface {p1, v0, v1, v0, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    const/4 p0, 0x2

    const p2, 0x7f1417e3

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_b
    const/4 p0, 0x3

    const p2, 0x7f1417a9

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

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

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe23

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xe11

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    iget-object p1, p1, Lcom/android/settings/network/apn/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x5

    const-string v6, "ApnEditor"

    const-string v7, "Deleting APN succeeded"

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x5

    const-string v12, "ApnEditor"

    const-string v13, "Deleting APN failed"

    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p1, v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1
.end method

.method public final onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAirplaneModeEnabledObserver:Lcom/android/settings/network/apn/ApnEditor$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnEditor$2;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnEditor$2;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnEditor$2;

    :cond_1
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->KEY_APN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "nrphone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "phone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "wap.cingular"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pta"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "nxtgenphone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ims"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "enhancedphone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "firstnet-phone"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ndo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "endo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    :goto_0
    move v5, v3

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "rcsstreaming.lguplus.co.kr"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "youtubechatbot"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "zrate.sktelecom.com"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "45008"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "45002"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "45004"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v3

    :goto_2
    const-string v6, "isKtSim : "

    const-string v7, "ApnUtils"

    invoke-static {v6, v7, v5}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v5, :cond_7

    const-string v5, "ims.ktfwing.com"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "tethering.ktfwing.com"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "IMS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "internet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "tethering"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, ".au-net.ne.jp"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_0

    :cond_7
    move v5, v4

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "apn_apn : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ApnEditor"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    const/16 p1, 0xa

    sput p1, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->mDialogId:I

    new-instance p1, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;

    invoke-direct {p1}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;-><init>()V

    invoke-virtual {p1, p0, v4}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "error"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v4

    :cond_8
    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030015

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    return v4

    :cond_b
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    return v4

    :cond_c
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    return v4

    :cond_e
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    return v4

    :cond_10
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    return v4

    :cond_12
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object p2, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object p2, v0

    :cond_13
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_14
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    if-eqz p2, :cond_15

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_15
    const-string p2, ""

    :goto_5
    invoke-static {p2}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    const-string v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_6

    :cond_17
    if-eqz p2, :cond_18

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_18
    invoke-static {v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6
    iput-boolean v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    return v3
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apn_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe12

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "apn_apn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe13

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "apn_http_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe14

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "apn_http_port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe15

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "apn_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe16

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "apn_server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "apn_mmsc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "apn_mms_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "apn_mms_port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1b

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "apn_mcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "apn_mnc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1d

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "apn_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe1e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_d
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_e
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe21

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_f
    const-string v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe22

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_10
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe24

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_11
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe25

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_12
    const-string v1, "mvno_match_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe26

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_13
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mAirplaneModeEnabledObserver:Lcom/android/settings/network/apn/ApnEditor$1;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->fillUI(Z)V

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    :cond_0
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapReceiver:Lcom/android/settings/network/apn/ApnEditor$2;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/apn/ApnEditor$3;

    invoke-direct {v2, p0}, Lcom/android/settings/network/apn/ApnEditor$3;-><init>(Lcom/android/settings/network/apn/ApnEditor;)V

    invoke-virtual {v0, p0, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v2, v0, Landroidx/preference/SecEditTextPreference;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/preference/SecEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x4001

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "user_edited_apn"

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mdm_edited_apn"

    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_mnc"

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_mcc"

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final protocolDescription(Ljava/lang/String;Landroidx/preference/SecListPreference;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IPV4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "IP"

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f03001b

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public final setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aget-object p0, p0, p5

    check-cast p0, Ljava/lang/Integer;

    if-nez p4, :cond_1

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

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return p0
.end method

.method public final setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

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

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method public showError()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "error"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public validateAndSaveApnData()Z
    .locals 23

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mEditable:Z

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ApnEditor"

    if-nez v0, :cond_0

    const-string v0, "Read Only Apn Skip"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mHasUserEditedApn:Z

    if-nez v0, :cond_1

    const-string v0, "mHasUserEditedApn"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const-string v0, "mHasMdmEditedApn / mHasUserEditedApn"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    const/4 v10, -0x1

    const/16 v11, 0x17

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mIsEditableMode:Z

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "carrier edit 4, do not update apn!"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->showError()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v16, 0x5

    const-string v20, "ApnEditor"

    const-string v21, "Saving APN failed"

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_4
    invoke-static {v14, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v6, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "45005"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "45006"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "45008"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_1

    :cond_7
    :goto_0
    move v0, v7

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getOmcPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "error"

    if-nez v1, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getOmcPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getOmcPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getOmcPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_a

    :cond_9
    :goto_2
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "dun Error!"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    sput v0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->mDialogId:I

    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;-><init>()V

    invoke-virtual {v0, v6, v5}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v5

    :cond_a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-boolean v2, v6, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string v16, "name"

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v18, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v3

    move-object v3, v12

    move-object/from16 v22, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string v2, "apn"

    const/4 v5, 0x2

    move-object/from16 v1, v16

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string v2, "proxy"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const-string v2, "port"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    const-string v2, "mmsport"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mUser:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    const-string v2, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mServer:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string v2, "server"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const-string v2, "password"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const-string v2, "mmsc"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Landroidx/preference/SecListPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    const-string v2, "authtype"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v4, v0

    :cond_b
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Landroidx/preference/SecListPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    const-string v2, "protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Landroidx/preference/SecListPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    const-string v2, "roaming_protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v5, 0xf

    const-string v2, "type"

    const-string v3, "default,mms,supl"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    :goto_3
    move v4, v0

    goto :goto_4

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const-string v2, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_3

    :goto_4
    const-string v2, "mcc"

    const/16 v5, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string v2, "mnc"

    const/16 v5, 0xa

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numeric"

    move-object/from16 v13, v16

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isMultiSimModel()Z

    move-result v0

    const-string v1, "sim_slot"

    if-eqz v0, :cond_d

    iget v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mSimSlot:I

    if-ne v0, v7, :cond_d

    const-string v0, "current1"

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v13, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_d
    const-string v0, "current"

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    :goto_5
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    iget-object v0, v0, Landroidx/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v5, v18

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    move/from16 v14, v18

    goto :goto_8

    :cond_f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v7, :cond_10

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v7, v1

    goto :goto_7

    :cond_10
    move/from16 v1, v18

    :goto_7
    or-int/2addr v5, v1

    goto :goto_6

    :cond_11
    move v14, v5

    :goto_8
    const-string v2, "bearer_bitmask"

    const/16 v5, 0x13

    move-object/from16 v0, p0

    move-object v1, v13

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    if-eqz v14, :cond_14

    iget v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    if-nez v14, :cond_13

    goto :goto_9

    :cond_13
    if-lt v0, v7, :cond_14

    add-int/lit8 v1, v0, -0x1

    shl-int v1, v7, v1

    and-int/2addr v1, v14

    if-eqz v1, :cond_14

    :goto_9
    move v3, v0

    goto :goto_b

    :cond_14
    :goto_a
    move/from16 v3, v18

    :goto_b
    const-string v2, "bearer"

    const/16 v5, 0x12

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Landroidx/preference/SecListPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    const-string v2, "mvno_type"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    const-string v2, "mvno_match_data"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const-string v14, "edited"

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "edited : "

    invoke-static {v0, v1, v9}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_15

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_15
    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    iget-boolean v3, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const/16 v5, 0x11

    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    invoke-virtual {v13, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "roaming"

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_16
    const-string v1, "CSC"

    invoke-virtual {v6, v1}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string v2, "Telephony"

    if-eqz v1, :cond_17

    invoke-virtual {v6, v2}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    iget-boolean v1, v6, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    if-nez v1, :cond_1a

    invoke-virtual {v6, v2}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    move/from16 v0, v18

    sput v0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->mDialogId:I

    new-instance v1, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;

    invoke-direct {v1}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;-><init>()V

    invoke-virtual {v1, v6, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    move/from16 v0, v18

    :goto_c
    const-string v1, "validateAndSaveApnData() show ERROR_DIALOG_ID"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    if-eqz v0, :cond_1c

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1b

    iget-object v0, v6, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateApnDataToDatabase values : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateApnDataToDatabase uri : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6, v0, v13}, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_d

    :cond_1c
    const-string v0, "validateAndSaveApnData: not calling update()"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return v7
.end method

.method public validateApnData()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Landroidx/preference/SecEditTextPreference;

    iget-object v0, v0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Landroidx/preference/SecEditTextPreference;

    iget-object v1, v1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Landroidx/preference/SecEditTextPreference;

    iget-object v2, v2, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Landroidx/preference/SecEditTextPreference;

    iget-object v3, v3, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Landroidx/preference/SecEditTextPreference;

    iget-object v4, v4, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const v6, 0x7f140e60

    const v7, 0xffff

    const-string v8, "ApnEditor"

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v5, :cond_0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string v10, "validateApnData: portNumber:"

    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    move v4, v9

    :goto_0
    if-le v4, v7, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const-string v4, "CSC"

    invoke-virtual {p0, v4}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsNoWarning:Z

    if-nez v4, :cond_3

    const-string v4, "Telephony"

    invoke-virtual {p0, v4}, Lcom/android/settings/network/apn/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f14033f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsCarrierIdApn:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v5, v9

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e63

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e59

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    const-string v0, "validateApnData: carrier id APN does not have mcc/mnc defined"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    if-eq v0, v4, :cond_b

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e5f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_b
    :goto_4
    if-nez v10, :cond_e

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v2, v1

    :goto_5
    if-ge v9, v2, :cond_c

    aget-object v3, v1, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "validateApnData: appending type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v4, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140e58

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_e
    return-object v10
.end method
