.class public Lcom/samsung/android/settings/datausage/SecBillingCycleManager;
.super Ljava/lang/Object;
.source "SecBillingCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TETHERING_DATA_WARNING_OFF:Ljava/lang/Long;

.field public static final TETHERING_DATA_WARNING_ON:Ljava/lang/Long;

.field private static sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private final mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSlotNumber:I

.field private mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    const-wide v0, 0x2540be400L

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TETHERING_DATA_WARNING_ON:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TETHERING_DATA_WARNING_OFF:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string v1, "network_management"

    .line 74
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v1, "netpolicy"

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 78
    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v2, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 80
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 81
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 82
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 83
    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v1

    .line 85
    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 91
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_1
    return-void
.end method

.method private getDefaultLimitBytes()J
    .locals 6

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getNetworkPolicy()Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 198
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 199
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    const-wide/16 v2, -0x1

    if-eqz p0, :cond_1

    .line 201
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-wide v2, 0x12a05f200L

    .line 202
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v4, "data_limit_threshold_bytes_long"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 205
    :cond_1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 206
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLimitBytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private getDefaultWarningBytes()J
    .locals 4

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    const-wide/32 v0, 0x77359400

    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v2, "data_warning_threshold_bytes_long"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 185
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultWarningBytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;
    .locals 1

    .line 64
    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    .line 67
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updatePolicyEditor()V

    .line 68
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->sInstance:Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    return-object p0
.end method


# virtual methods
.method public getAvailableBillingCycleSetting()Z
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    .line 245
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 249
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableBillingCycleSetting() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCycleDay()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p0

    return p0
.end method

.method public getCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 132
    :goto_0
    sget-object p1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCycleDay Cycle day : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getNetworkPolicy()Landroid/net/NetworkPolicy;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getPolicyLimitBytes()J
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 150
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPolicyLimitBytes() Limit bytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getPolicyWarningBytes()J
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 141
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPolicyWarningBytes() Warning bytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getTetheringDataWarningValue()Ljava/lang/Long;
    .locals 3

    .line 272
    iget v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mSlotNumber:I

    if-nez v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TETHERING_DATA_WARNING_OFF:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "tethering_data_warning_sim_slot_0"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TETHERING_DATA_WARNING_OFF:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "tethering_data_warning_sim_slot_1"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public isDataLimitRestrict()Z
    .locals 3

    .line 233
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 237
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataLimitRestrict : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public releaseUIUpdater()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    return-void
.end method

.method public setCycleDay(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setCycleDay(Landroid/net/NetworkTemplate;I)V

    return-void
.end method

.method public setCycleDay(Landroid/net/NetworkTemplate;I)V
    .locals 2

    .line 118
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    return-void
.end method

.method public setNetworkTemplate(Landroid/net/NetworkTemplate;)V
    .locals 1

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 102
    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    goto :goto_0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    :goto_0
    return-void
.end method

.method public setPolicyLimitBytes(J)V
    .locals 3

    .line 159
    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyLimitBytes() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    return-void
.end method

.method public setPolicyLimitBytesByDefault()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getDefaultLimitBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyLimitBytes(J)V

    return-void
.end method

.method public setPolicyWarningBytes(J)V
    .locals 3

    .line 169
    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyWarningBytes() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    return-void
.end method

.method public setPolicyWarningBytesByDefault()V
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getDefaultWarningBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyWarningBytes(J)V

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result p1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 258
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mSlotNumber:I

    return-void
.end method

.method public setTetheringDataWarningValue(Ljava/lang/Long;)V
    .locals 3

    .line 263
    iget v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mSlotNumber:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p1, "tethering_data_warning_sim_slot_0"

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p1, "tethering_data_warning_sim_slot_1"

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    return-void
.end method

.method public setUIUpdater(Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    return-void
.end method

.method public updatePolicyEditor()V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    return-void
.end method

.method public updateScreen()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x32

    .line 222
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mUIUpdater:Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;

    invoke-interface {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager$BillingCycleUpdater;->updatePreference()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 225
    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
