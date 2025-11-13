.class public Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DataUsageSummaryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final KEY:Ljava/lang/String; = "status_header"

.field private static final PETA:J = 0x38d7ea4c68000L

.field private static final RELATIVE_SIZE_LARGE:F = 1.5625f

.field private static final RELATIVE_SIZE_SMALL:F = 0.64f

.field private static final TAG:Ljava/lang/String; = "DataUsageController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCycleEnd:J

.field private mCycleStart:J

.field private mDataBarSize:J

.field protected mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field protected mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDataplanCount:I

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mHasMobileData:Z

.field private mHistoricalUsageLevel:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mManageSubscriptionIntent:Landroid/content/Intent;

.field protected mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mSnapshotTime:J


# direct methods
.method public static synthetic $r8$lambda$YEgXp5WU6LDcCMyP0Ku2kcNDTUA(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->lambda$updateState$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V
    .locals 1

    const-string/jumbo v0, "status_header"

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 120
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 122
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    .line 124
    invoke-virtual {p0, p4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->init(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/net/DataUsageController;Lcom/android/settings/datausage/DataUsageInfoController;Landroid/net/NetworkTemplate;Lcom/android/settingslib/NetworkPolicyEditor;ILandroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/widget/EntityHeaderController;Landroidx/preference/PreferenceFragmentCompat;I)V
    .locals 1

    const-string/jumbo v0, "status_header"

    .line 176
    invoke-direct {p0, p6, v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 178
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    .line 179
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 180
    iput-object p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 181
    iput p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    .line 183
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 184
    iput-object p8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 185
    iput-object p9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 186
    iput p10, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 188
    iput-object p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private displayUsageLevel(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    return-wide p1

    .line 347
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHistoricalUsageLevel:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p1
.end method

.method private static getPrimaryPlan(Ljava/util/List;)Landroid/telephony/SubscriptionPlan;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)",
            "Landroid/telephony/SubscriptionPlan;"
        }
    .end annotation

    .line 439
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 443
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionPlan;

    .line 444
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 445
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->validSize(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method private synthetic lambda$updateState$0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/net/DataUsageController;->getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/telephony/SubscriptionInfo;)V
    .locals 5

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 359
    iput v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    const-wide/16 v1, -0x1

    .line 360
    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 361
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-virtual {v3, p1}, Lcom/android/settings/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 362
    iget-wide v3, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 363
    iget-wide v3, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 364
    iget-wide v3, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 365
    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    if-eqz p2, :cond_2

    .line 367
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-eqz p1, :cond_2

    .line 368
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    .line 369
    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object p1

    .line 370
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Ljava/util/List;)Landroid/telephony/SubscriptionPlan;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 373
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    .line 374
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 375
    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    .line 378
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 379
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    .line 381
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 382
    iget-object v1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_1

    iget-object v2, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v2, :cond_1

    .line 383
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    .line 384
    iget-object p1, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    .line 386
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    .line 392
    :cond_2
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Have "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " plans, dflt sub-id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", intent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataUsageController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unlimited(J)Z
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validSize(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x38d7ea4c68000L

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method createDataUsageController(Landroid/content/Context;)Lcom/android/settingslib/net/DataUsageController;
    .locals 0

    .line 161
    new-instance p0, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method createManageSubscriptionIntent(I)Landroid/content/Intent;
    .locals 4

    const-string/jumbo v0, "netpolicy"

    .line 409
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 408
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    .line 412
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get subscription plan owner for subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 417
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 421
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v1

    .line 422
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 426
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 428
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 431
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
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

.method protected getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method getSubscriptionPlans(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->get()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 205
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
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

.method public init(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 133
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

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

.method public onStart()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const/4 v2, 0x0

    .line 196
    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method protected updateConfiguration(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    .locals 2

    .line 139
    const-class v0, Landroid/net/NetworkPolicyManager;

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 141
    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v1, v0}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->createDataUsageController(Landroid/content/Context;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 144
    invoke-virtual {v0, p2}, Lcom/android/settingslib/net/DataUsageController;->setSubscriptionId(I)V

    .line 145
    new-instance v0, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    if-eqz p3, :cond_0

    .line 148
    sget p3, Lcom/android/settings/R$string;->cell_data_template:I

    iput p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 149
    invoke-static {p1, p2}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 151
    sget p1, Lcom/android/settings/R$string;->wifi_data_template:I

    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 152
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    goto :goto_0

    .line 154
    :cond_1
    sget p3, Lcom/android/settings/R$string;->ethernet_data_template:I

    iput p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageTemplate:I

    .line 155
    invoke-static {p1, p2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 12

    .line 224
    check-cast p1, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 226
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateConfiguration(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V

    .line 231
    :cond_0
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHistoricalUsageLevel:Ljava/util/concurrent/Future;

    .line 234
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 235
    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v6

    .line 237
    iget-wide v1, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    .line 240
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    .line 241
    invoke-virtual {p1, v9, v8, v9}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;Z)V

    .line 269
    invoke-direct {p0, v6, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->refreshDataplanInfo(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/telephony/SubscriptionInfo;)V

    .line 272
    iget-wide v0, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v10, 0x0

    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    iget-wide v2, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->cell_data_warning:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 274
    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v9

    .line 273
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->cell_data_limit:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 276
    invoke-static {v0, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v9

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v10

    if-lez v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->cell_data_warning:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 279
    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v9

    .line 278
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-wide v0, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v2, v0, v10

    if-lez v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->cell_data_limit:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 283
    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v9

    .line 282
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    .line 322
    :goto_0
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanSize:J

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mHasMobileData:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    .line 324
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_4

    .line 325
    invoke-virtual {p1, v9}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    goto :goto_1

    .line 327
    :cond_4
    invoke-virtual {p1, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    .line 329
    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 328
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 330
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanUse:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataBarSize:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setProgress(F)V

    .line 334
    :goto_1
    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleStart:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCycleEnd:J

    iget-wide v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mSnapshotTime:J

    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mCarrierName:Ljava/lang/CharSequence;

    iget v8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mDataplanCount:I

    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->mManageSubscriptionIntent:Landroid/content/Intent;

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void

    .line 244
    :cond_5
    iget-object v0, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {p1, v7, v0, v9}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;Z)V

    .line 246
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    .line 247
    invoke-direct {p0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->displayUsageLevel(J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    .line 250
    invoke-virtual {p1, v9}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    .line 252
    invoke-virtual {p1, v8}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    .line 253
    iget-wide v1, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iget-wide v3, v6, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
