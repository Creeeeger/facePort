.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecSimStatus.java"

# interfaces
.implements Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;,
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;,
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static final mSupportRoaming:Z

.field private static final mSupportSignalStrength:Z

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final NETWORK_NAME_TYPE_CHARACTER:Ljava/lang/String;

.field private final NETWORK_NAME_TYPE_NUMERIC:Ljava/lang/String;

.field private final mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrentSlotId:I

.field private mCurrentSubId:I

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mImsManager:[Lcom/sec/ims/ImsManager;

.field private mImsPreference:Landroidx/preference/Preference;

.field private mIsRegistered:[Z

.field private mIsRegisteredListener:Z

.field private mIsShowImsStatus:[Z

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPreviousServiceState:Landroid/telephony/ServiceState;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mSimSlotCount:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentSlotId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSubId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsManager(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)[Lcom/sec/ims/ImsManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRegistered(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)[Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegistered:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSubId(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousServiceState(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mPreviousServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubscriptionInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTelephonyDisplayInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPhoneSubscriptionInfo(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misImsRegistered(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->isImsRegistered(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAreaInfoText(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateAreaInfoText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataState(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateDataState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateImsStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateImsStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkProvider(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkProvider()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkType(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRoamingStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceState(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSignalStrength(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSubscriptionStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSubscriptionStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSubscriptionStatusNotAvailable(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSubscriptionStatusNotAvailable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmSupportRoaming()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportRoaming:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSupportSignalStrength()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smisShowImsStatus(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->isShowImsStatus(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsupportIccId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->supportIccId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 129
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

    .line 155
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->supportRoaming()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportRoaming:Z

    .line 159
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    .line 228
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3;

    sget v1, Lcom/android/settings/R$xml;->sec_device_info_status_sim:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/ims/ImsManager;

    .line 136
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-array v2, v1, [Z

    .line 137
    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegistered:[Z

    new-array v1, v1, [Z

    .line 138
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    const-string v1, "NUMERIC"

    .line 149
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->NETWORK_NAME_TYPE_NUMERIC:Ljava/lang/String;

    const-string v1, "CHARACTER"

    .line 150
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->NETWORK_NAME_TYPE_CHARACTER:Ljava/lang/String;

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 161
    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    const/4 v1, -0x1

    .line 162
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    .line 168
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    .line 199
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$2;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 878
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$4;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private bindCellBroadcastService()V
    .locals 4

    .line 932
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    .line 933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCellBroadcastServicePackage()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 936
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    const-string v2, "SecSimStatus"

    if-eqz v1, :cond_1

    .line 938
    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 939
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Unable to bind to service"

    .line 941
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "skipping bindService because connection already exists"

    .line 944
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private createImsService(Landroid/content/Context;I)V
    .locals 3

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createImsService() START, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/sec/ims/ImsManager;

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$5;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;I)V

    invoke-direct {v1, p1, v2, p2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v1, v0, p2

    .line 1140
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object p0, p0, p2

    if-eqz p0, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/sec/ims/ImsManager;->connectService()V

    :cond_0
    return-void
.end method

.method private getAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 2

    .line 1384
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 1390
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    .line 1391
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1392
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result p1

    :cond_2
    return p1
.end method

.method private getCellBroadcastServicePackage()Ljava/lang/String;
    .locals 5

    .line 951
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 955
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "SecSimStatus"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellBroadcastServicePackageName: found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " CBS packages"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 960
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 961
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 962
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 963
    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "getCellBroadcastServicePackageName: "

    if-nez v3, :cond_2

    .line 966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 969
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "getCellBroadcastServicePackageName: found a CBS package but packageName is null/empty"

    .line 973
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p0, "getCellBroadcastServicePackageName: package name not found"

    .line 977
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentServiceState()Landroid/telephony/ServiceState;
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "getCurrentServiceState()"

    .line 718
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 720
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_0

    .line 721
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 719
    :goto_0
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0
.end method

.method private getDbm(Landroid/telephony/SignalStrength;)I
    .locals 2

    .line 1362
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 1368
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    .line 1369
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1370
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result p1

    :cond_2
    return p1
.end method

.method private getIndianOperator(I)Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;
    .locals 0

    .line 1708
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1710
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "airtel"

    .line 1711
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1712
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    return-object p0

    :cond_0
    const-string p1, "jio"

    .line 1713
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1714
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->RELIANCE:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    return-object p0

    .line 1717
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->OTHERS:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    return-object p0
.end method

.method static getNetworkTypeName(I)Ljava/lang/String;
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

.method private getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private hasService()Z
    .locals 4

    .line 812
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 818
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 p0, 0x3

    if-eq v1, p0, :cond_0

    return v2

    :cond_0
    return v0

    .line 823
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p0

    if-nez p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method private initialize()V
    .locals 3

    const-string v0, "SecSimStatus"

    const-string v1, "initialize() START"

    .line 598
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_0

    const-string v1, "mSubscriptionInfo == null"

    .line 602
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSubscriptionStatusNotAvailable()V

    return-void

    .line 609
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateLatestAreaInfo()V

    .line 618
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSubscriptionStatus()V

    const-string p0, "initialize() END"

    .line 620
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isImsRegistered(I)Z
    .locals 3

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImsRegistered() START, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object p0, p0, p1

    const-string v0, "slotId: "

    if-eqz p0, :cond_0

    const-string v2, "volte"

    .line 1153
    invoke-virtual {p0, v2}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isImsRegistered: true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1159
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isImsRegistered: false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isNetworkRoamingState(Landroid/telephony/ServiceState;)Z
    .locals 9

    .line 1769
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "SecSimStatus"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    .line 1771
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 1772
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isRoamingWithVoiceOnly()Z

    move-result v3

    const-string v4, " roaming="

    const-string v5, "isNetworkRoamingState id="

    if-eqz v3, :cond_4

    .line 1773
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1775
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result v3

    .line 1776
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result v6

    .line 1777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNetworkRoamingState isPsOnlyReg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " radioTechType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 1779
    invoke-static {v6}, Lcom/android/internal/telephony/SemTelephonyHelper;->isLte(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1780
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSprDisplayRoam()Z

    move-result p0

    .line 1781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkRoamingState roaming="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1783
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    .line 1784
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-nez v3, :cond_1

    .line 1787
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    .line 1789
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 1792
    :cond_2
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " vrs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " drs="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vrt="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " drt="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1792
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "isNetworkRoamingState no ServiceState"

    .line 1800
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1803
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    .line 1804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 1808
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string p0, "isNetworkRoamingState no TelephonyManager"

    .line 1811
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1
.end method

.method private static isShowImsStatus(Landroid/content/Context;I)Z
    .locals 8

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowImsStatus() START, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-object v0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1087
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1088
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "show_regi_info_in_sec_settings"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1091
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 1099
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1101
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1102
    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 1105
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1110
    :goto_1
    invoke-virtual {v2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 1111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowImsStatus() obj: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 1113
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1114
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isShowImsStatus() isShow: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1107
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1108
    throw p0

    :cond_3
    :goto_4
    const-string p0, "isShowImsStatus() not found"

    .line 1092
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 1094
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0
.end method

.method private resetSignalStrength()V
    .locals 5

    .line 1352
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_signal_strength:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, -0x71

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "signal_strength"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRssiNoti(I)V
    .locals 6

    const-string v0, "setRssiNoti : dos.close() error"

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRssiNoti() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecSimStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 731
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x5

    const/16 v5, 0x18

    .line 735
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x1

    .line 736
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 737
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 738
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 740
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 747
    :catch_1
    invoke-static {v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :goto_1
    new-instance p1, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 752
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    .line 744
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 747
    :catch_2
    invoke-static {v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_3
    throw p0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 696
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 699
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static supportChameleonRoaming()Z
    .locals 3

    const-string v0, "persist.sys.roampref_menu"

    const-string v1, "Unknown"

    .line 1827
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roampref_menu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecSimStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_UseChameleon"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 1830
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static supportIccId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)Z
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "supportIccId() START"

    .line 1906
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    invoke-static {p0, p2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result p2

    .line 1911
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isCdmaLteEnabled(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1916
    :goto_0
    sget-object p2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isMetroPCS(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p0, p1

    .line 1920
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    const-string v1, "CscFeature_Setting_SupportIccId"

    invoke-virtual {p2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p0

    .line 1923
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "showIccId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "supportIccId() END"

    .line 1926
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private static supportRoaming()Z
    .locals 2

    .line 1841
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableSimStatusRoamingMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->supportChameleonRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateAreaInfoText()V
    .locals 3

    .line 987
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    if-nez v0, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 989
    invoke-static {v0}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v1, "latest_area_info"

    .line 996
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    .line 997
    invoke-interface {v0, v2}, Landroid/telephony/ICellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 996
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get area info. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecSimStatus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDataState(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 853
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 844
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_suspended:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 841
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 847
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_connecting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 850
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_disconnected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 858
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->hasService()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 859
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string v0, "data_state"

    .line 865
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateIccidNumber()V
    .locals 5

    const-string v0, "SecSimStatus"

    const-string v1, "updateIccidNumber() START"

    .line 1857
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->supportIccId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)Z

    move-result v1

    const-string v2, "icc_id"

    if-nez v1, :cond_0

    .line 1880
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 1885
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 1887
    sget-object v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v4, "VPP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1888
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->addWhitespaceEvery4digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1891
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "updateIccidNumber() END"

    .line 1894
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateImsStatus()V
    .locals 3

    .line 1167
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1172
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    .line 1173
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1179
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegistered:[Z

    aget-boolean v0, v1, v0

    .line 1181
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_ABOUTDEVICE_IMS_REGISTRATION_STATUS_SUMMARY_BY_VZW:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 1182
    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 1184
    sget v0, Lcom/android/settings/R$string;->status_registered:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/android/settings/R$string;->status_not_registered:I

    .line 1186
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims_reg"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1175
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateLatestAreaInfo()V
    .locals 3

    const-string v0, "SecSimStatus"

    const-string v1, "updateLatestAreaInfo() START"

    .line 1009
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    .line 1014
    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowLatestAreaInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_1

    .line 1021
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->bindCellBroadcastService()V

    goto :goto_1

    :cond_1
    const-string v1, "latest_area_info"

    .line 1023
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    :goto_1
    const-string p0, "updateLatestAreaInfo() END"

    .line 1025
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateNetworkProvider()V
    .locals 5

    const-string v0, "SecSimStatus"

    const-string v1, "updateNetworkProvider() START"

    .line 764
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 770
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "KDI"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "kddi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "au"

    .line 777
    :cond_2
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "CCT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 778
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 780
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v1

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 782
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->airplane_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 787
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_5

    .line 788
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 789
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 790
    sget-object v3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->UK_VIRGIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->isInsertedSim(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "WiFiCall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "gsm.operator.alpha"

    const-string v3, ""

    .line 791
    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string v1, "operator_name"

    .line 795
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "updateNetworkProvider() END"

    .line 798
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateNetworkType()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "SecSimStatus"

    const-string v2, "updateNetworkType() START (Mobile Voice/Data network type)"

    .line 1411
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const-string v3, "data_network_type"

    const-string v4, "voice_network_type"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 1416
    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    .line 1420
    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1429
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 1431
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    .line 1432
    iget-object v7, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    .line 1433
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotId: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    .line 1438
    iget-object v8, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v8

    .line 1439
    iget-object v9, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    if-nez v9, :cond_1

    move v9, v5

    goto :goto_0

    .line 1441
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v9

    .line 1444
    :goto_0
    iget-object v10, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->device_info_default:I

    .line 1446
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "gsm.network.type"

    .line 1444
    invoke-static {v6, v12, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1447
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "networkType: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v10

    const-string v12, ", dataNetworkTypeName: "

    const-string v13, "HSPAP"

    const-string v14, "4G"

    const-string v15, "Unknown"

    const-string v5, "LTE"

    if-eqz v10, :cond_c

    const-string v2, "isChinaCTCModel"

    .line 1450
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-static {v8}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1452
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1453
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Replace networkType to be same as voiceNetworkType ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    goto/16 :goto_4

    :cond_2
    const-string v8, "CDMA-IS95A"

    .line 1457
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "CDMA-IS95B"

    .line 1458
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "1xRTT"

    .line 1459
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const-string v8, "EvDo-rev.0"

    .line 1461
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "EvDo-rev.A"

    .line 1462
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "EvDo-rev.B"

    .line 1463
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const-string v8, "UMTS"

    .line 1465
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v6, "WCDMA"

    goto :goto_4

    :cond_5
    const-string v8, "HSDPA"

    .line 1467
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "HSUPA"

    .line 1468
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 1470
    :cond_6
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "HSPA+"

    goto :goto_4

    .line 1473
    :cond_7
    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    .line 1475
    :cond_b
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isChinaCTCModel => changed networkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_e

    :cond_c
    if-eqz v2, :cond_e

    .line 1482
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v16

    .line 1483
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "getOptionalRadioTech: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-direct {v0, v7}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getIndianOperator(I)Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    move-result-object v3

    .line 1486
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "indianOperator: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1489
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    if-ne v3, v4, :cond_d

    const-string v3, "DC"

    goto :goto_5

    .line 1494
    :cond_d
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    const/4 v3, 0x0

    :goto_5
    if-eqz v8, :cond_f

    .line 1499
    invoke-static {v8}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    .line 1502
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "actualDataNetworkType: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nactualVoiceNetworkType: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", voiceNetworkTypeName: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\noverrideNetworkType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    const/4 v8, 0x3

    if-eq v9, v6, :cond_11

    if-ne v9, v8, :cond_10

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v6, 0x1

    :goto_8
    const/16 v9, 0xd

    if-ne v2, v9, :cond_12

    if-eqz v6, :cond_12

    const-string v2, "NR NSA"

    move-object v6, v2

    goto :goto_9

    :cond_12
    move-object v6, v3

    .line 1520
    :goto_9
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "VPP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_c

    .line 1550
    :cond_13
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "OMN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "O2U"

    .line 1551
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "XEC"

    .line 1552
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "EVR"

    .line 1553
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "DCM"

    .line 1554
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    .line 1565
    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "For isChinaModel"

    .line 1566
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1569
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    if-ne v2, v8, :cond_18

    .line 1570
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1571
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "Replace dataNetworkTypeName to LTE, NR "

    .line 1572
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LTE, NR"

    move-object v6, v2

    goto :goto_b

    .line 1575
    :cond_15
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    const-string v3, "CCT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1580
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v2

    .line 1581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiCallingAvailable: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_18

    const-string v2, "IWLAN"

    goto/16 :goto_e

    :cond_16
    :goto_a
    const-string v2, "For OMN || O2U || XEC || EVR || DCM"

    .line 1555
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "Replace dataNetworkTypeName LTE to 4G"

    .line 1557
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-virtual {v6, v5, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1560
    :cond_17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "Replace voiceNetworkTypeName LTE to 4G"

    .line 1561
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-virtual {v4, v5, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_18
    :goto_b
    move-object v2, v4

    goto :goto_e

    :cond_19
    :goto_c
    const-string v2, "For VZW"

    .line 1521
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1527
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v2

    .line 1528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nrFrequencyRange: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1a

    const-string v6, "5G UW"

    goto :goto_d

    :cond_1a
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    if-ne v2, v8, :cond_1c

    :cond_1b
    const-string v6, "5G"

    :cond_1c
    :goto_d
    const-string v2, "ro.ril.svlte1x"

    .line 1540
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "1x RTT"

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1541
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    if-ne v2, v8, :cond_18

    .line 1542
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v6, v3

    .line 1545
    :cond_1d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v2, v3

    .line 1609
    :goto_e
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v3

    const-string v4, "CarrierFeature_Setting_CustNetworkSelMenu4"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v4, v8, v9}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CarrierFeature_Setting_CustNetworkSelMenu4 = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "NUMERIC"

    .line 1613
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto :goto_f

    :cond_1e
    move v3, v9

    :goto_f
    if-eqz v3, :cond_20

    .line 1616
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "NUMERIC Type - Replace dataNetworkTypeName LTE to 4G"

    .line 1617
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v14

    .line 1620
    :cond_1f
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v2, "NUMERIC Type - Replace voiceNetworkTypeName LTE to 4G"

    .line 1621
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_20
    move-object v14, v2

    .line 1626
    :goto_10
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    const-string v2, "voice network type is Empty or Unknown, Set to default text"

    .line 1627
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1630
    :cond_22
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    const-string v2, "data network type is Empty or Unknown, Set to default text"

    .line 1631
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1634
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voiceNetworkTypeName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v18

    .line 1640
    invoke-direct {v0, v2, v14}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 1641
    invoke-direct {v0, v2, v6}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "updateNetworkType() END (Mobile Voice/Data network type)"

    .line 1645
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateRoamingStatus(Landroid/telephony/ServiceState;)V
    .locals 3

    const-string v0, "SecSimStatus"

    const-string v1, "updateRoamingStatus() START"

    .line 1732
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    sget-boolean v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportRoaming:Z

    const-string v2, "roaming_state"

    if-nez v1, :cond_0

    .line 1736
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 1743
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->isNetworkRoamingState(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1748
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_roaming_in:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1753
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_roaming_not:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "updateRoamingStatus() END"

    .line 1756
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "updateServiceState() START"

    .line 1038
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result v1

    .line 1040
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->resetSignalStrength()V

    goto :goto_0

    .line 1042
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mPreviousServiceState:Landroid/telephony/ServiceState;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1044
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    const/4 p1, 0x1

    if-eq v1, p1, :cond_3

    const/4 p1, 0x2

    if-eq v1, p1, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    .line 1063
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1060
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_service_off:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1057
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_service_out:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1051
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_service_in:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "service_state"

    .line 1068
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "updateServiceState() END"

    .line 1070
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "SecSimStatus"

    const-string v2, "updateSignalStrength() START"

    .line 1199
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 1204
    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    const-string v3, "signal_strength"

    if-nez v2, :cond_1

    .line 1205
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    .line 1211
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const-string v4, "show_signal_strength_in_sim_status_bool"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 1212
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 1214
    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const-class v7, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 1218
    invoke-virtual {v6, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1221
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    if-nez v2, :cond_3

    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSlotId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " subId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Signal strength Not available (Reason: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value is FALSE)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 1237
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 1238
    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "[SimStatus] out of service"

    .line 1240
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->resetSignalStrength()V

    return-void

    .line 1246
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v2

    .line 1247
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result v4

    .line 1248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SimStatus] (1) signalDbm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dBm, signalAsu: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "asu"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v6, :cond_8

    .line 1252
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    .line 1253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SimStatus] slotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "isChinaCTCModel"

    .line 1256
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "/"

    const-string v10, "gsm.sim.selectnetwork"

    const-string v11, "CDMA"

    if-nez v6, :cond_5

    .line 1257
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1258
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 1259
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v4

    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SimStatus] CTC CDMA D/A : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-nez v6, :cond_6

    .line 1261
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    if-ne v6, v5, :cond_8

    .line 1263
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v2

    .line 1264
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v4

    .line 1265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SimStatus] CTC GSM D/A : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_9

    const/4 v2, 0x0

    :cond_9
    if-ne v4, v6, :cond_a

    const/4 v4, 0x0

    :cond_a
    if-nez v2, :cond_11

    if-nez v4, :cond_11

    .line 1279
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1280
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    if-eq v10, v5, :cond_11

    const-string v2, "display the cdma values instead of gsm values"

    .line 1281
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 1283
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    const/16 v10, -0x78

    if-ne v4, v10, :cond_b

    goto :goto_3

    :cond_b
    if-ne v2, v10, :cond_c

    goto :goto_2

    :cond_c
    if-ge v2, v4, :cond_d

    goto :goto_3

    :cond_d
    :goto_2
    move v2, v4

    .line 1286
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v4

    .line 1287
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v10

    if-nez v10, :cond_e

    goto :goto_4

    :cond_e
    if-nez v4, :cond_10

    :cond_f
    move v4, v10

    goto :goto_4

    :cond_10
    if-ge v4, v10, :cond_f

    :cond_11
    :goto_4
    const-string v10, "ro.baseband"

    const-string v11, ""

    .line 1298
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1299
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SimStatus] baseband: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SimStatus] (2) signalDbm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/16 v12, 0xff

    const/16 v13, 0x63

    if-nez v11, :cond_14

    const-string v11, "msm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "mdm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_12
    if-eq v6, v4, :cond_13

    if-eq v13, v4, :cond_13

    if-ne v12, v4, :cond_18

    :cond_13
    const-string v2, "[SimStatus] Set dBm, Asu to -113, 0"

    .line 1305
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/16 v2, -0x71

    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1309
    :cond_14
    iget-object v10, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v10, :cond_18

    .line 1310
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 1311
    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v11

    .line 1312
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v15

    .line 1313
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SimStatus] subId: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v5, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v14, Lcom/android/settings/R$string;->device_info_default:I

    .line 1315
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "gsm.network.type"

    .line 1314
    invoke-static {v15, v9, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1316
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SimStatus] networkType("

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v9, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v9

    .line 1318
    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15, v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v10

    const-string v15, "): "

    if-eqz v9, :cond_15

    .line 1320
    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 1321
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SimStatus] networkType data("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_15
    if-eqz v10, :cond_16

    .line 1323
    invoke-static {v10}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 1324
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SimStatus] networkType voice("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_6
    if-eq v6, v4, :cond_17

    if-eq v13, v4, :cond_17

    if-eq v12, v4, :cond_17

    .line 1326
    iget-object v6, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    .line 1329
    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "Unknown"

    .line 1330
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1331
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SimStatus] signalAsu: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , Set to -113, 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1336
    :cond_18
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SimStatus] (final) signalDbm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    sget v5, Lcom/android/settings/R$string;->sim_signal_strength:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSubscriptionStatus()V
    .locals 3

    const-string v0, "SecSimStatus"

    const-string v1, "updateSubscriptionStatus() START"

    .line 627
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TM updated with SubId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCurrentSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkProvider()V

    .line 636
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 637
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    .line 639
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 640
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 641
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateNetworkType()V

    .line 642
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    .line 643
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateIccidNumber()V

    const-string p0, "updateSubscriptionStatus() END"

    .line 645
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSubscriptionStatusNotAvailable()V
    .locals 3

    const-string v0, "SecSimStatus"

    const-string v1, "updateSubscriptionStatusNotAvailable()"

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "operator_name"

    const/4 v1, 0x0

    .line 655
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_state"

    .line 657
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "latest_area_info"

    .line 659
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_state"

    .line 661
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportSignalStrength:Z

    const-string v2, "signal_strength"

    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    :goto_0
    const-string v0, "voice_network_type"

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_network_type"

    .line 671
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSupportRoaming:Z

    const-string v2, "roaming_state"

    if-eqz v0, :cond_1

    .line 674
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 676
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    .line 679
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->supportIccId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)Z

    move-result v0

    const-string v2, "icc_id"

    if-eqz v0, :cond_2

    .line 680
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 682
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->removePreference(Ljava/lang/String;)Z

    :goto_2
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 582
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mCellBroadcastServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 323
    sget p0, Lcom/android/settings/R$xml;->sec_device_info_status_sim:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 331
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SecSimStatus"

    const-string v0, "onCreate()"

    .line 332
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SalesCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mRes:Landroid/content/res/Resources;

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v0, "ims_reg"

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsPreference:Landroidx/preference/Preference;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimSlotCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "onCreateView()"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 355
    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 357
    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p2

    .line 358
    invoke-interface {p2}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getFirstSlotIndex()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 360
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "onDestroy()"

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->deinitialize()V

    .line 478
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 425
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "SecSimStatus"

    const-string v1, "onPause()"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    move v1, v0

    .line 433
    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 436
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mImsManager:[Lcom/sec/ims/ImsManager;

    aput-object v3, v2, v1

    .line 437
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegistered:[Z

    aput-boolean v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_4

    .line 443
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 446
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 447
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    :cond_3
    return-void

    .line 455
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 456
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 458
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_5

    .line 459
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v1, :cond_6

    .line 464
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 466
    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_6
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 382
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SecSimStatus"

    const-string v1, "onResume()"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimHotSwapReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 391
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSimSlotCount:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->isShowImsStatus(Landroid/content/Context;I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsShowImsStatus:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->createImsService(Landroid/content/Context;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateImsStatus()V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_2

    return-void

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 406
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 411
    invoke-virtual {v0, v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 414
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_4

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateAreaInfoText()V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.AREA_INFO_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mIsRegisteredListener:Z

    return-void
.end method

.method public onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    const-string v0, "SecSimStatus"

    const-string v1, "TabChanged()"

    .line 488
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    .line 498
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 502
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->initialize()V

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateImsStatus()V

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 512
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mTelephonyCallback:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 515
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mShowLatestAreaInfo:Z

    if-eqz p1, :cond_3

    .line 516
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->updateAreaInfoText()V

    .line 519
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 520
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->setRssiNoti(I)V

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 372
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "SecSimStatus"

    const-string p2, "onViewCreated()"

    .line 373
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->initialize()V

    return-void
.end method

.method public removePreference(Ljava/lang/String;)Z
    .locals 2

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removePreference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
