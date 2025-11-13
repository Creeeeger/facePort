.class public Lcom/kddi/android/CpaNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CpaNotiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    }
.end annotation


# static fields
.field public static final blacklist APN:Ljava/lang/String; = "apn"

.field private static final blacklist APN_CPA_KEY:Ljava/lang/String; = "5"

.field public static final blacklist APN_ID:Ljava/lang/String; = "apn_id"

.field private static final blacklist APN_INDEX:I = 0x2

.field private static final blacklist APN_NAVI_KEY:Ljava/lang/String; = "6"

.field public static final blacklist AUTHENTICATION_ERROR:I = -0x3

.field public static final blacklist AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final blacklist BEARER:Ljava/lang/String; = "bearer"

.field public static final blacklist CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final blacklist CARRIER_ENABLED_INDEX:I = 0x4

.field public static final blacklist CHANGE_MODE_CPA_REQUEST:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

.field public static final blacklist CHANGE_MODE_REQUEST_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

.field public static final blacklist CONNECTED:I = 0x2

.field public static final blacklist CONNECTING:I = 0x1

.field public static final blacklist CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

.field public static final blacklist CPA_CUR_PREF_APN_KEY:Ljava/lang/String; = "cpa.cur.pref.apn.key"

.field public static final blacklist CPA_CUR_PREF_APN_NAME:Ljava/lang/String; = "cpa.cur.pref.apn.name"

.field public static final blacklist CPA_ENABLED:Ljava/lang/String; = "com.kddi.android.cpa.CPA_ENABLED"

.field public static final blacklist CPA_PREV_PREF_APN_KEY:Ljava/lang/String; = "cpa.prev.pref.apn.key"

.field public static final blacklist CPA_PREV_PREF_APN_NAME:Ljava/lang/String; = "cpa.prev.pref.apn.name"

.field private static final blacklist DEFAULTAPN_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final blacklist DISCONNECTED:I = 0x4

.field public static final blacklist DISCONNECTING:I = 0x3

.field public static final blacklist ID:Ljava/lang/String; = "_id"

.field private static final blacklist ID_INDEX:I = 0x0

.field private static final blacklist KDI_APN_KEY_URI:Landroid/net/Uri;

.field public static final blacklist MCC:Ljava/lang/String; = "mcc"

.field public static final blacklist MMSC:Ljava/lang/String; = "mmsc"

.field public static final blacklist MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final blacklist MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final blacklist MNC:Ljava/lang/String; = "mnc"

.field public static final blacklist MOBILE_DATA_ERROR:Ljava/lang/String; = "com.kddi.android.cpa.MOBILE_DATA_ERROR"

.field public static blacklist MODE_CPA:Ljava/lang/String; = null

.field public static blacklist MODE_DEFAULT:Ljava/lang/String; = null

.field public static blacklist MODE_NAVI:Ljava/lang/String; = null

.field public static final blacklist NAME:Ljava/lang/String; = "name"

.field public static final blacklist NAME_CPA:Ljava/lang/String; = "Manual"

.field private static final blacklist NAME_INDEX:I = 0x1

.field public static final blacklist NAME_NAVI:Ljava/lang/String; = "Manual_for_Navi"

.field public static final blacklist NAVI_APN_NAME:Ljava/lang/String; = "Manual_for_Navi"

.field public static final blacklist NUMERIC:Ljava/lang/String; = "numeric"

.field public static final blacklist PARAMETER_ERROR:I = -0x1

.field public static final blacklist PASSWORD:Ljava/lang/String; = "password"

.field public static final blacklist PORT:Ljava/lang/String; = "port"

.field private static final blacklist PREFERAPN_URI:Landroid/net/Uri;

.field public static final blacklist PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final blacklist PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final blacklist PROXY:Ljava/lang/String; = "proxy"

.field public static final blacklist RADIO_NOT_AVAILABLE:I = -0x2

.field public static final blacklist RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field public static final blacklist ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final blacklist SERVER:Ljava/lang/String; = "server"

.field static final blacklist STATUS_ALERT_AUTHENTICATION_FAILED:I = 0xa

.field static final blacklist STATUS_ALERT_CONNECTION_FAIL_OTHER:I = 0xc

.field static final blacklist STATUS_ALERT_OUT_OF_3G_NETWORK:I = 0xb

.field public static final blacklist SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CpaNotiReceiver"

.field public static final blacklist TYPE:Ljava/lang/String; = "type"

.field private static final blacklist TYPES_INDEX:I = 0x3

.field public static final blacklist UNKNOWN_ERROR:I = -0x4

.field public static final blacklist USER:Ljava/lang/String; = "user"

.field private static blacklist mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

.field private static final blacklist sProjection:[Ljava/lang/String;


# instance fields
.field private blacklist DBG:Z

.field private blacklist isWifiTethered:Z

.field private blacklist mCm:Landroid/net/ConnectivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mReceiverGbookMode:Landroid/content/BroadcastReceiver;

.field private blacklist mState:I

.field private blacklist mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 21

    .line 78
    const-string v0, "NAVI"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    .line 79
    const-string v0, "DEFAULT"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    .line 80
    const-string v0, "DEFAULT_ON_CPA"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    .line 138
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 139
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    .line 142
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    .line 170
    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string/jumbo v4, "proxy"

    const-string/jumbo v5, "port"

    const-string/jumbo v6, "user"

    const-string/jumbo v7, "server"

    const-string/jumbo v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string/jumbo v16, "type"

    const-string/jumbo v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string/jumbo v20, "roaming_protocol"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    .line 192
    iput v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mState:I

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 202
    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private blacklist changeStateToBtDunType(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 3
    .param p1, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 547
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v0, :cond_0

    .line 548
    const/4 v0, 0x2

    .local v0, "btDunState":I
    goto :goto_0

    .line 549
    .end local v0    # "btDunState":I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v0, :cond_1

    .line 550
    const/4 v0, 0x1

    .restart local v0    # "btDunState":I
    goto :goto_0

    .line 551
    .end local v0    # "btDunState":I
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v0, :cond_2

    .line 552
    const/4 v0, 0x4

    .restart local v0    # "btDunState":I
    goto :goto_0

    .line 555
    .end local v0    # "btDunState":I
    :cond_2
    const/4 v0, 0x0

    .line 556
    .restart local v0    # "btDunState":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateToBtDunType() phoneState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> btDunState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CpaNotiReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return v0
.end method

.method private blacklist checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 924
    if-nez p1, :cond_0

    .line 925
    const-string v0, ""

    return-object v0

    .line 927
    :cond_0
    return-object p1
.end method

.method private blacklist getCurrentMode()Ljava/lang/String;
    .locals 4

    .line 783
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 788
    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    .local v1, "mode":Ljava/lang/String;
    goto :goto_0

    .line 791
    .end local v1    # "mode":Ljava/lang/String;
    :cond_0
    const-string v1, "Manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    .restart local v1    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 793
    .end local v1    # "mode":Ljava/lang/String;
    :cond_1
    const-string v1, "Manual_for_Navi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 794
    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    .restart local v1    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 796
    .end local v1    # "mode":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    .line 799
    .restart local v1    # "mode":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMode()name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpaNotiReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-object v1
.end method

.method private static blacklist getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 486
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 488
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    .line 490
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getNaviState()I
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private blacklist getPreferredApnKey()Ljava/lang/String;
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 840
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "cpa.cur.pref.apn.key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, "cur_pref_apn_key":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredApnKey() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpaNotiReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    return-object v1
.end method

.method private blacklist getPreferredApnName()Ljava/lang/String;
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 858
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "cpa.cur.pref.apn.name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "cur_pref_apn_name":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredApnName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpaNotiReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    return-object v1
.end method

.method private blacklist getWifiTetherState()Z
    .locals 15

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, "wifiTethered":Z
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/TetheringManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager;

    .line 949
    .local v1, "mTetheringManager":Landroid/net/TetheringManager;
    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "mTetheredIface":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, "mWifiRegexs":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "CpaNotiReceiver"

    if-ge v6, v4, :cond_3

    aget-object v8, v2, v6

    .line 953
    .local v8, "o":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 954
    .local v9, "s":Ljava/lang/String;
    array-length v10, v3

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v3, v11

    .line 955
    .local v12, "regex":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 956
    iget-boolean v13, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getWifiTetherState() regex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    const/4 v0, 0x1

    .line 954
    .end local v12    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 952
    .end local v8    # "o":Ljava/lang/Object;
    .end local v9    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 961
    :cond_3
    iget-boolean v4, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiTetherState() wifiTethered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_4
    return v0
.end method

.method private blacklist handleMobileDataErrorForCpa(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p2, "exitCode"    # I

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMobileDataErrorForCpa: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exitCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaNotiReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 511
    :pswitch_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    .line 512
    goto :goto_0

    .line 508
    :pswitch_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    .line 509
    goto :goto_0

    .line 515
    :pswitch_2
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    .line 516
    nop

    .line 520
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist handleMobileDataErrorForNavi(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V
    .locals 2
    .param p1, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$DataState;
    .param p2, "exitCode"    # I

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMobileDataErrorForNavi: phoneState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exitCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaNotiReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    packed-switch p2, :pswitch_data_0

    .line 538
    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->changeStateToBtDunType(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    .line 539
    .local v0, "btDunState":I
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0, v0, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    goto :goto_0

    .line 529
    .end local v0    # "btDunState":I
    :pswitch_0
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 530
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    .line 533
    invoke-virtual {p0, v1, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    .line 543
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist loadPreferredApnInfo()V
    .locals 9

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 807
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v5, "name"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "name ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 810
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, "CpaNotiReceiver"

    if-nez v2, :cond_0

    .line 811
    const-string v4, "Cursor is null when querying PREFERAPN_URI."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 815
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 816
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 817
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadPreferredApnInfo() key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    .line 820
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadPreferredApnInfo() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-direct {p0, v1}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_1
    iget-boolean v4, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "getPreferredApnKey() error!! selected key is nothing. return first apn\'s key"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 829
    return-void
.end method

.method private blacklist loadPrevApnInfo()V
    .locals 15

    .line 736
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevSelectedKey()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "mPrevSelectedKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevSelectedName()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "mPrevSelectedName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, "mCurSelectedkey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "mCurSelectedName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadPrevApnInfo() mPrevSelectedKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPrevSelectedName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CpaNotiReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 745
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, "where":Ljava/lang/String;
    iget-object v6, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v9, "name"

    const-string v10, "apn"

    const-string/jumbo v11, "type"

    const-string v12, "carrier_enabled"

    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v11, "name ASC"

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 752
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 753
    const-string v7, "Cursor is null when querying KDI_APN_KEY_URI."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 757
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 758
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_4

    .line 759
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, "key":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, "name":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v10, "values":Landroid/content/ContentValues;
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 764
    const-string v11, "1"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 765
    :cond_1
    const-string v11, "Manual"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "0"

    if-eqz v13, :cond_2

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 766
    invoke-virtual {v10, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 767
    :cond_2
    const-string v11, "Manual_for_Navi"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 768
    invoke-virtual {v10, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v5

    const-string v5, "_id=?"

    invoke-virtual {v11, v13, v10, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 772
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 773
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 774
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 778
    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    .line 779
    invoke-direct {p0, v1}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method private blacklist loadPrevSelectedKey()Ljava/lang/String;
    .locals 4

    .line 884
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 885
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "cpa.prev.pref.apn.key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "prev_pref_apn_key":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPrevSelectedKey() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpaNotiReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    return-object v1
.end method

.method private blacklist loadPrevSelectedName()Ljava/lang/String;
    .locals 4

    .line 905
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 906
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "cpa.prev.pref.apn.name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "prev_pref_apn_name":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPrevSelectedName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpaNotiReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    return-object v1
.end method

.method private blacklist naviAuthFailedProcess()V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevApnInfo()V

    .line 496
    return-void
.end method

.method private blacklist notifyCpaEnabled()V
    .locals 2

    .line 1002
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    const-string v1, "notifyCpaEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1004
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string v1, "com.kddi.android.cpa.CPA_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1006
    return-void
.end method

.method private blacklist savePrevSelectedKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 874
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 875
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cpa.prev.pref.apn.key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 876
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 878
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePrevSelectedKey()key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpaNotiReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    return-void
.end method

.method private blacklist savePrevSelectedName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 895
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 896
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cpa.prev.pref.apn.name"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 899
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePrevSelectedName() name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpaNotiReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    return-void
.end method

.method private blacklist setApnCarrierEnabledStatus(Ljava/lang/String;)V
    .locals 20
    .param p1, "selectedName"    # Ljava/lang/String;

    .line 584
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "mCurSelectedkey":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "mCurSelectedName":Ljava/lang/String;
    iget-boolean v4, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    const-string v5, "CpaNotiReceiver"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectedName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mCurSelectedkey = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mCurSelectedName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "where":Ljava/lang/String;
    iget-object v6, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v9, "name"

    const-string v10, "apn"

    const-string/jumbo v11, "type"

    const-string v12, "carrier_enabled"

    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v11, "name ASC"

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 597
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 598
    const-string v7, "Cursor is null when querying KDI_APN_KEY_URI."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void

    .line 602
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 603
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_6

    .line 604
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 605
    .local v8, "key":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 606
    .local v10, "name":Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v11, "values":Landroid/content/ContentValues;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "_id=?"

    if-eqz v13, :cond_2

    .line 609
    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v13, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v15, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    new-array v9, v9, [Ljava/lang/String;

    aput-object v8, v9, v7

    invoke-virtual {v13, v15, v11, v14, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v17, v4

    move-object v13, v5

    move-object/from16 v18, v6

    goto/16 :goto_1

    .line 611
    :cond_2
    const-string v13, "Manual"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v7, ", mCurName = "

    const-string v9, ", mCurkey = "

    move-object/from16 v17, v4

    .end local v4    # "where":Ljava/lang/String;
    .local v17, "where":Ljava/lang/String;
    const-string v4, ", name = "

    move-object/from16 v18, v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v18, "cursor":Landroid/database/Cursor;
    const-string v6, "key = "

    move-object/from16 v19, v5

    const-string v5, "1"

    if-eqz v15, :cond_4

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 612
    invoke-virtual {v11, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v5, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v13, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-virtual {v5, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    invoke-direct {v0, v8}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    .line 615
    invoke-direct {v0, v10}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    .line 616
    iget-boolean v5, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v19

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v13, v19

    goto :goto_1

    .line 611
    :cond_4
    move-object/from16 v13, v19

    .line 617
    const-string v15, "Manual_for_Navi"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 618
    invoke-virtual {v11, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v5, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v15, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v8, v1, v16

    invoke-virtual {v5, v15, v11, v14, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 620
    invoke-direct {v0, v8}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    .line 621
    invoke-direct {v0, v10}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    .line 622
    iget-boolean v1, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_5
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 626
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "values":Landroid/content/ContentValues;
    move-object/from16 v1, p1

    move-object v5, v13

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    .line 627
    .end local v17    # "where":Ljava/lang/String;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    move-object/from16 v18, v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 629
    return-void
.end method

.method private blacklist setApnListItem()V
    .locals 10

    .line 632
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    const-string v1, "CpaNotiReceiver"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setApnListItem() start!with mSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 634
    .local v0, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 635
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/kddi/android/CpaNotiReceiver;->sProjection:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 637
    if-eqz v2, :cond_2

    .line 638
    :try_start_0
    iget-boolean v3, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", APN_NAVI_KEY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 641
    invoke-direct {p0, v0, v2}, Lcom/kddi/android/CpaNotiReceiver;->validateAndSave(Landroid/net/Uri;Landroid/database/Cursor;)Z

    .line 649
    if-eqz v2, :cond_4

    .line 650
    goto :goto_0

    .line 645
    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    const-string v3, " cursor is null!! "

    invoke-direct {v1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/kddi/android/CpaNotiReceiver;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/kddi/android/CpaNotiReceiver;
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    .line 650
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 651
    :cond_3
    throw v1

    .line 647
    :catch_0
    move-exception v1

    .line 649
    if-eqz v2, :cond_4

    .line 650
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 652
    :cond_4
    return-void
.end method

.method private blacklist setNaviState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 914
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 916
    return-void
.end method

.method private blacklist setPreferredApnKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 847
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferredApnKey() key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaNotiReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 849
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 850
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cpa.cur.pref.apn.key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 851
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 853
    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->updatePreferredApnInfo(Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method private blacklist setPreferredApnName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 864
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferredApnName() name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaNotiReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 866
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 867
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cpa.cur.pref.apn.name"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 868
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 869
    return-void
.end method

.method private blacklist showApnListForDebug()V
    .locals 11

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 968
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "name"

    const-string v5, "apn"

    const-string/jumbo v6, "type"

    const-string v7, "carrier_enabled"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "name ASC"

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 975
    .local v1, "cursor":Landroid/database/Cursor;
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    const-string v3, "CpaNotiReceiver"

    if-eqz v2, :cond_0

    const-string/jumbo v2, "showApnListForDebug()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    const-string v4, "--------------------------------------------------"

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_1
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurPerfKey = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_2
    if-nez v1, :cond_3

    .line 980
    const-string v2, "Cursor is null when querying KDI_APN_KEY_URI."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void

    .line 984
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 986
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 987
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "name":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 989
    .local v5, "apn":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 990
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 993
    .local v8, "carrier_enabled":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APNinfo :key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " carrier="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", apn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 995
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "apn":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "carrier_enabled":Ljava/lang/String;
    goto :goto_0

    .line 996
    :cond_5
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_6

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 998
    return-void
.end method

.method private blacklist startGbookModeReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 339
    new-instance v0, Lcom/kddi/android/CpaNotiReceiver$1;

    invoke-direct {v0, p0}, Lcom/kddi/android/CpaNotiReceiver$1;-><init>(Lcom/kddi/android/CpaNotiReceiver;)V

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mReceiverGbookMode:Landroid/content/BroadcastReceiver;

    .line 345
    const-string v0, "CpaNotiReceiver"

    const-string/jumbo v1, "register AirplaneMode receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string v1, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v1, "com.kddi.android.cpa.MOBILE_DATA_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "com.kddi.android.cpa.CPA_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "com.kddi.android.cpa.CPA_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "com.kddi.android.cpa.testNAVI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mReceiverGbookMode:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    return-void
.end method

.method private blacklist updatePreferredApnInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "preferredKey"    # Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 833
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 834
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    sget-object v2, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 836
    return-void
.end method

.method private blacklist updateTetherState([Ljava/lang/Object;)Z
    .locals 12
    .param p1, "tethered"    # [Ljava/lang/Object;

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "wifiTethered":Z
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/TetheringManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager;

    .line 934
    .local v1, "mTetheringManager":Landroid/net/TetheringManager;
    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, "mWifiRegexs":[Ljava/lang/String;
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    .line 937
    .local v6, "o":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 938
    .local v7, "s":Ljava/lang/String;
    array-length v8, v2

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v2, v9

    .line 939
    .local v10, "regex":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v0, 0x1

    .line 938
    .end local v10    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 936
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 942
    :cond_2
    iget-boolean v3, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTetherState() wifiTethered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CpaNotiReceiver"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_3
    return v0
.end method

.method private blacklist validateAndSave(Landroid/net/Uri;Landroid/database/Cursor;)Z
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 655
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    const-string v1, "CpaNotiReceiver"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateAndSave() start! cursor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "Manual_for_Navi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 660
    :cond_1
    iget-boolean v3, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn name is different with navi\'s apn. (name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    .line 664
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 668
    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .local v3, "values":Landroid/content/ContentValues;
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apn"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "proxy"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "authtype"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    iget-object v4, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v5, v5, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    const-string v6, "kddi_cpa_static_dns1"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 679
    iget-object v4, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v5, v5, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    const-string v6, "kddi_cpa_static_dns2"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 681
    iget-object v4, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    iget-boolean v4, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateAndSave() end! uri ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", values ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_5
    return v0
.end method


# virtual methods
.method public blacklist broadcastState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "error"    # I

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaNotiReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 690
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "broadcastState : State not changed return"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    return-void

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 696
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "broadcastState : Discard broadcasting illegal states"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2
    return-void

    .line 701
    :cond_3
    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    .line 704
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v2, "connStatus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v2, "errno"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display for broadcating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    goto :goto_0

    .line 713
    :catch_0
    move-exception v2

    .line 714
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "broadcastState : not found CONNECTIVITY_ACTION"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    const-string/jumbo v2, "ril.cpa.isPrevWifiTethered"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 719
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    :goto_1
    goto :goto_2

    .line 722
    :catch_1
    move-exception v4

    .line 723
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 720
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v4

    .line 721
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 726
    :goto_2
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "prev wifi tethered - tether trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_5
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 730
    .local v1, "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 733
    .end local v1    # "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    :cond_6
    return-void
.end method

.method public blacklist changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    .param p3, "mContext"    # Landroid/content/Context;

    .line 404
    const-string/jumbo v0, "wifi"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 406
    if-eqz p1, :cond_10

    .line 408
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "changeMode : Mode is NAVI, settings is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    :goto_0
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CpaNotiReceiver"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    if-nez v0, :cond_2

    .line 411
    const-string v0, "changeMode : Mode is DEFAULT, mSettings is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, -0x4

    return v0

    .line 415
    :cond_2
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 416
    const-string v0, "changeMode - MODE_NAVI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getWifiTetherState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    :cond_3
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "wifi tethered - untether trigger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_4
    const-string/jumbo v0, "ril.cpa.isPrevWifiTethered"

    const-string/jumbo v3, "true"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 430
    :cond_5
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 431
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "changeMode - current mode is NAVI : return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_6
    return v2

    .line 436
    :cond_7
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "changeMode - start change mode DEFAULT -> NAVI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_8
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 441
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPreferredApnInfo()V

    .line 443
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->savePrevSelectedKey(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->savePrevSelectedName(Ljava/lang/String;)V

    .line 448
    :cond_9
    sput-object p2, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    .line 451
    const-string v0, "Manual_for_Navi"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->setApnListItem()V

    goto :goto_2

    .line 459
    :cond_a
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 460
    const-string v0, "changeMode - case MODE_DEFAULT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 463
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "changeMode - current mode is DEFAULT : return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_b
    return v2

    .line 468
    :cond_c
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "changeMode - start change mode NAVI -> DEFAULT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_d
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 473
    const-string v0, "Manual"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_e
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevApnInfo()V

    .line 479
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    .line 482
    :cond_f
    :goto_2
    return v2

    .line 407
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "changeMode : Mode is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createSettingFromIntent(Landroid/content/Intent;)Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 389
    new-instance v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>(Lcom/kddi/android/CpaNotiReceiver$NaviSettings-IA;)V

    .line 391
    .local v0, "settings":Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    const-string/jumbo v1, "settings.apn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    .line 392
    const-string/jumbo v1, "settings.userId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    .line 393
    const-string/jumbo v1, "settings.password"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    .line 394
    const-string/jumbo v1, "settings.authType"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    .line 395
    const-string/jumbo v1, "settings.proxyHost"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    .line 396
    const-string/jumbo v1, "settings.proxyPort"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    .line 397
    const-string/jumbo v1, "settings.dns1"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    .line 398
    const-string/jumbo v1, "settings.dns2"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    .line 400
    return-object v0
.end method

.method public blacklist createTestNaviSetting()Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    .locals 2

    .line 374
    new-instance v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>(Lcom/kddi/android/CpaNotiReceiver$NaviSettings-IA;)V

    .line 376
    .local v0, "settings":Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    const-string/jumbo v1, "unitrg.au-net.ne.jp"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    .line 377
    const-string v1, "X36yN3Dhe9UjPhzm@unitrg.au-net.ne.jp"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    .line 378
    const-string v1, "KpyrR6BP"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    .line 379
    const/4 v1, 0x2

    iput v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    .line 380
    const-string v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    .line 381
    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    .line 382
    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    .line 383
    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    .line 385
    return-object v0
.end method

.method public blacklist getExitCode()I
    .locals 3

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "exitCode":I
    const-string/jumbo v1, "ril.cpa_exit_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "cpaExitCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    :cond_0
    return v0
.end method

.method public blacklist isCpaOn()Z
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "ro.vendor.radio.kddi.support_cpa"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "CpaNotiReceiver"

    if-nez v3, :cond_1

    .line 208
    iget-boolean v3, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "Intent will be ignored"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void

    .line 212
    :cond_1
    if-eqz v2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 216
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "action":Ljava/lang/String;
    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    .line 221
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Manual"

    const/4 v7, 0x4

    const-string v8, "connectivity"

    if-eqz v5, :cond_7

    .line 222
    iget-boolean v5, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "received boot completed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/kddi/android/CpaNotiReceiver;->startGbookModeReceiver(Landroid/content/Context;)V

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPreferredApnInfo()V

    .line 227
    invoke-direct {v0, v7}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    .line 228
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 231
    iget-boolean v5, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "received boot completed : MODE_NAVI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->notifyCpaEnabled()V

    .line 235
    invoke-direct {v0, v6}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    .line 236
    return-void

    .line 238
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->naviAuthFailedProcess()V

    .line 239
    return-void

    .line 242
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->notifyCpaEnabled()V

    .line 247
    :cond_7
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 248
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 249
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 250
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "received "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 252
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "packageName":Ljava/lang/String;
    const-string v10, "com.kddi.android.btdun"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 254
    const-string v10, "com.kddi.android.btdun.oemtest"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 255
    const-string v10, "com.kddi.android.btdun.oemtest2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 256
    :cond_9
    invoke-direct {v0, v7}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->naviAuthFailedProcess()V

    .line 262
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_a
    const-string v5, "com.kddi.android.cpa.ANY_DATA_STATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 264
    invoke-static/range {p2 .. p2}, Lcom/kddi/android/CpaNotiReceiver;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    .line 265
    .local v5, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v7, "apn"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "apnKey":Ljava/lang/String;
    const-string v9, "apnType"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "apnTypeKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getExitCode()I

    move-result v10

    .line 269
    .local v10, "exitCode":I
    iget-boolean v11, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_ANY_DATA_CONNECTION_STATE_CHANGED : state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " apnKey["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] apnTypeKey:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] exitCode["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_b
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 272
    iget-object v8, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, v0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 274
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "default"

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 276
    :cond_c
    sget-object v8, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    if-eqz v8, :cond_d

    iget-object v8, v8, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 277
    invoke-direct {v0, v5, v10}, Lcom/kddi/android/CpaNotiReceiver;->handleMobileDataErrorForNavi(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V

    goto :goto_0

    .line 279
    :cond_d
    iget-object v8, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v13, "name"

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "name ASC"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_e

    .line 283
    const-string v6, "Cursor is null when querying PREFERAPN_URI."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 287
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_f

    .line 288
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 289
    const/4 v11, 0x1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 290
    .local v11, "name":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preferred apn name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v5, v4, :cond_f

    if-eqz v10, :cond_f

    .line 292
    invoke-direct {v0, v5, v10}, Lcom/kddi/android/CpaNotiReceiver;->handleMobileDataErrorForCpa(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V

    .line 295
    .end local v11    # "name":Ljava/lang/String;
    :cond_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 296
    .end local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 297
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 298
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v5, v4, :cond_11

    if-eqz v10, :cond_11

    .line 299
    invoke-direct {v0, v5, v10}, Lcom/kddi/android/CpaNotiReceiver;->handleMobileDataErrorForCpa(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V

    .line 302
    .end local v5    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v7    # "apnKey":Ljava/lang/String;
    .end local v9    # "apnTypeKey":Ljava/lang/String;
    .end local v10    # "exitCode":I
    :cond_11
    :goto_0
    goto/16 :goto_3

    .line 304
    :cond_12
    const-string v5, "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "sys.cpa_navi_state"

    if-eqz v5, :cond_14

    .line 305
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 306
    iget-boolean v5, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_13

    const-string v5, "CHANGE_MODE_REQUEST_ACTION received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_13
    const-string v4, "mode"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "strMode":Ljava/lang/String;
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, v2}, Lcom/kddi/android/CpaNotiReceiver;->createSettingFromIntent(Landroid/content/Intent;)Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    .line 311
    .end local v4    # "strMode":Ljava/lang/String;
    goto/16 :goto_3

    :cond_14
    const-string v5, "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "on"

    const-string/jumbo v9, "state"

    if-eqz v5, :cond_17

    .line 312
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 313
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "state":Ljava/lang/String;
    iget-boolean v8, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v8, :cond_15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHANGE_MODE_CPA_REQUEST received : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_15
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 316
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_16
    iget-object v4, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "kddi_cpa_on"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v5    # "state":Ljava/lang/String;
    :goto_1
    goto :goto_3

    :cond_17
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 322
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 323
    const-string/jumbo v4, "tetherArray"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 325
    .local v4, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/kddi/android/CpaNotiReceiver;->updateTetherState([Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    .end local v4    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 326
    :cond_18
    const-string v5, "com.kddi.android.cpa.testNAVI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 327
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 328
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    .restart local v5    # "state":Ljava/lang/String;
    iget-boolean v6, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "testNAVI received : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_19
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->createTestNaviSetting()Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    move-result-object v4

    const-string v6, "NAVI"

    invoke-virtual {v0, v6, v4, v1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    goto :goto_3

    .line 333
    :cond_1a
    const/4 v4, 0x0

    const-string v6, "DEFAULT"

    invoke-virtual {v0, v6, v4, v1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    goto :goto_3

    .line 326
    .end local v5    # "state":Ljava/lang/String;
    :cond_1b
    :goto_2
    nop

    .line 336
    :goto_3
    return-void

    .line 213
    .end local v3    # "action":Ljava/lang/String;
    :cond_1c
    :goto_4
    return-void
.end method

.method public blacklist showAlertDialog(I)V
    .locals 3
    .param p1, "status"    # I

    .line 561
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAlertDialog : status +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaNotiReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 563
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "com.kddi.android.cpa.MOBILE_DATA_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    const-string v1, "content"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 575
    :pswitch_0
    const-string v2, "STATUS_ALERT_CONNECTION_FAIL_OTHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    goto :goto_0

    .line 572
    :pswitch_1
    const-string v2, "STATUS_ALERT_OUT_OF_3G_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    goto :goto_0

    .line 569
    :pswitch_2
    const-string v2, "STATUS_ALERT_AUTHENTICATION_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    nop

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
