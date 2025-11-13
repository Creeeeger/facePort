.class public final Lcom/samsung/android/settings/datausage/SecBillingCycleManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mNetworkTemplate:Landroid/net/NetworkTemplate;

.field public final mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public final mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field public mSlotNumber:I

.field public mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string/jumbo v1, "netpolicy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v2, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    return-object p0
.end method


# virtual methods
.method public final getAvailableBillingCycleSetting()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasActiveSim(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "getAvailableBillingCycleSetting() : "

    const-string v4, " hasMobileData : "

    const-string v5, " hasSim : "

    invoke-static {v3, v2, v4, v1, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isAdminUser : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final getCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const-string p1, "getCycleDay Cycle day : "

    const-string v0, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getPolicyLimitBytes()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getPolicyLimitBytes() Limit bytes : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final getPolicyWarningBytes()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getPolicyWarningBytes() Warning bytes : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final getTetheringDataWarningValue()Ljava/lang/Long;
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mSlotNumber:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "tethering_data_warning_sim_slot_0"

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "tethering_data_warning_sim_slot_1"

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final isDataLimitRestrict()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "isDataLimitRestrict : "

    const-string v1, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v0, v1, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final setPolicyLimitBytes(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPolicyLimitBytes() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    return-void
.end method

.method public final setPolicyLimitBytesByDefault()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "data_limit_threshold_bytes_long"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide v4, 0x12a05f200L

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    :goto_1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDefaultLimitBytes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyLimitBytes(J)V

    return-void
.end method

.method public final setPolicyWarningBytes(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPolicyWarningBytes() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    return-void
.end method

.method public final setTetheringDataWarningValue(Ljava/lang/Long;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mSlotNumber:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tethering_data_warning_sim_slot_0"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tethering_data_warning_sim_slot_1"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    return-void
.end method

.method public final updateScreen()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    check-cast p0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecBillingCycleSettings.SecBillingCycleManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
