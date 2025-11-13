.class public Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;


# static fields
.field private static TAG:Ljava/lang/String; = "SecDataUsageListPreferenceController"

.field private static sSecureFolderTotalBytes:J


# instance fields
.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mSlotIndex:I

.field private mSubId:I

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDataUsageInfo(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsSecureFolderTotalBytes()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->sSecureFolderTotalBytes:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfputsSecureFolderTotalBytes(J)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->sSecureFolderTotalBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubId:I

    const-string p1, "data_usage_list_sim_slot_0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSlotIndex:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSlotIndex:I

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private refreshDataUsageInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSlotIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSlotIndex:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSlotIndex:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobile(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "network_template"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "sub_id"

    iget v2, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is_roaming"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "network_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const-class v0, Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p0, 0x0

    const v0, 0x7f14035f

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->sSecureFolderTotalBytes:J

    sget-object v2, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "secureFolderTotalBytes : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v0, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sget-object v2, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TotalBytes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v2, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f140bcc

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    new-instance p1, Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSlotIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    new-instance p1, Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->refreshDataUsageInfo()V

    iget v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubscriptions:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSlotIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mSubId:I

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v4, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iput-wide v4, v2, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mStart:J

    iget-wide v3, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    iput-wide v3, v2, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mEnd:J

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iput-object v3, v2, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    new-instance v3, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;

    new-instance v4, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$2;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$2;-><init>(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;Landroidx/preference/Preference;)V

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;-><init>(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;)V

    new-array v2, v1, [Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v2, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    if-eqz v0, :cond_3

    sget-wide v2, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->sSecureFolderTotalBytes:J

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cycle start time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v2, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cycle end time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    iget-wide v2, p0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
