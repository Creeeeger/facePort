.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiApConfigureSetDataLimitPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "set_data_limit_preference"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigureSetDataLimitPreferenceController"


# instance fields
.field private final GB:Ljava/math/BigDecimal;

.field private final KB:Ljava/math/BigDecimal;

.field private final MB:Ljava/math/BigDecimal;

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

.field private mContext:Landroid/content/Context;

.field private mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

.field private mDataUsageListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResources:Landroid/content/res/Resources;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mThisPreference:Landroidx/preference/SecPreference;

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetGB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->GB:Ljava/math/BigDecimal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetKB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->KB:Ljava/math/BigDecimal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetMB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->MB:Ljava/math/BigDecimal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApMobileData(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mThisPreference:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x400

    .line 36
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->KB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x100000

    .line 37
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->MB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x40000000

    .line 38
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->GB:Ljava/math/BigDecimal;

    .line 47
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mDataUsageListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 55
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mResolver:Landroid/content/ContentResolver;

    .line 66
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mResources:Landroid/content/res/Resources;

    .line 67
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 68
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->updateApMobileDataLimit()V

    return-void
.end method

.method private declared-synchronized getApDataLimitSummary()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->isMobileApOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_limited_data_usage:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    .line 148
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getUsageValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getUsageUnit()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    .line 149
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getLimitedValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getLimitedUnit()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 147
    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_unlimited_data_usage:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    .line 152
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getUsageValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getUsageUnit()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 151
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_limit_data_value:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    .line 157
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getLimitedValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getLimitedUnit()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 156
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_data_limit_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    sget-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Limit summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isMobileApOn()Z
    .locals 2

    .line 168
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 169
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "Wifi Manager is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_2

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mThisPreference:Landroidx/preference/SecPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 103
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "handlePreferenceTreeClick - Triggered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Dialog is showing, ignore"

    .line 108
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p1, "TETH_012"

    const-string v0, "8015"

    .line 111
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->MB:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getLimitedValueByUnite(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)V

    invoke-direct {p1, v0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mDataLimitDialog:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return v1
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 74
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mDataUsageListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/wifi/SemWifiManager;->registerWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mDataUsageListener:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->unRegisterWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public saveDataLimitChange()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->saveMobileDataLimitChange()V

    :cond_0
    return-void
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->getApDataLimitSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
