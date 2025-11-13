.class public Lcom/android/settings/development/tare/TareFactorController;
.super Ljava/lang/Object;
.source "TareFactorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/tare/TareFactorController$ConfigObserver;,
        Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;,
        Lcom/android/settings/development/tare/TareFactorController$TareFactorData;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings/development/tare/TareFactorController;


# instance fields
.field private mAlarmManagerConstants:Ljava/lang/String;

.field private final mAlarmManagerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/development/tare/TareFactorController$TareFactorData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDataChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mJobSchedulerConstants:Ljava/lang/String;

.field private final mJobSchedulerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/development/tare/TareFactorController$TareFactorData;",
            ">;"
        }
    .end annotation
.end field

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/settings/development/tare/TareFactorController;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlarmManagerConstants(Lcom/android/settings/development/tare/TareFactorController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerConstants:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmJobSchedulerConstants(Lcom/android/settings/development/tare/TareFactorController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerConstants:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseAlarmManagerGlobalSettings(Lcom/android/settings/development/tare/TareFactorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorController;->parseAlarmManagerGlobalSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseJobSchedulerGlobalSettings(Lcom/android/settings/development/tare/TareFactorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorController;->parseJobSchedulerGlobalSettings()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mParser:Landroid/util/KeyValueListParser;

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mDataChangeListeners:Landroid/util/ArraySet;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 71
    new-instance p1, Lcom/android/settings/development/tare/TareFactorController$ConfigObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/tare/TareFactorController$ConfigObserver;-><init>(Lcom/android/settings/development/tare/TareFactorController;Landroid/os/Handler;)V

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/development/tare/TareFactorController$ConfigObserver;->start()V

    const-string/jumbo p1, "tare_alarm_manager_constants"

    .line 75
    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerConstants:Ljava/lang/String;

    const-string/jumbo p1, "tare_job_scheduler_constants"

    .line 77
    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerConstants:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorController;->initAlarmManagerMap()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorController;->parseAlarmManagerGlobalSettings()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorController;->initJobSchedulerMap()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorController;->parseJobSchedulerGlobalSettings()V

    return-void
.end method

.method private getCurrentValue(Ljava/lang/String;I)J
    .locals 0

    .line 522
    invoke-direct {p0, p2}, Lcom/android/settings/development/tare/TareFactorController;->getMap(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 523
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-wide p0, p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->currentValue:J

    return-wide p0
.end method

.method private getFactorType(Ljava/lang/String;)I
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    .line 540
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget p0, p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->factorPolicy:I

    return p0

    .line 538
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t link key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to a policy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/development/tare/TareFactorController;
    .locals 2

    .line 87
    const-class v0, Lcom/android/settings/development/tare/TareFactorController;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/android/settings/development/tare/TareFactorController;->sInstance:Lcom/android/settings/development/tare/TareFactorController;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/android/settings/development/tare/TareFactorController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/development/tare/TareFactorController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/development/tare/TareFactorController;->sInstance:Lcom/android/settings/development/tare/TareFactorController;

    .line 91
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-object p0, Lcom/android/settings/development/tare/TareFactorController;->sInstance:Lcom/android/settings/development/tare/TareFactorController;

    return-object p0

    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getMap(I)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/development/tare/TareFactorController$TareFactorData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 498
    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    return-object p0

    .line 500
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid factor policy given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private getTitle(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 511
    invoke-direct {p0, p2}, Lcom/android/settings/development/tare/TareFactorController;->getMap(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 512
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->title:Ljava/lang/String;

    return-object p0
.end method

.method private initAlarmManagerMap()V
    .locals 8

    .line 100
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_min_balance_exempted:I

    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_min_satiated_balance_exempted"

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_min_balance_headless_app:I

    .line 105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_HEADLESS_SYSTEM_APP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_min_satiated_balance_headless_system_app"

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_min_balance_other_app:I

    .line 109
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_min_satiated_balance_other_app"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_max_satiated_balance:I

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MAX_SATIATED_BALANCE_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_max_satiated_balance"

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_initial_consumption_limit:I

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_initial_consumption_limit"

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_hard_consumption_limit:I

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_HARD_CONSUMPTION_LIMIT_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_hard_consumption_limit"

    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_top_activity:I

    .line 125
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_top_activity_instant"

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 129
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v6, 0x989680

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_top_activity_ongoing"

    .line 128
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 133
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_top_activity_max"

    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_notification_seen:I

    .line 137
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_seen_instant"

    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_seen_ongoing"

    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 145
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_seen_max"

    .line 144
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_notification_seen_15_min:I

    .line 149
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_WITHIN_15_INSTANT_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_seen_within_15_instant"

    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_WITHIN_15_ONGOING_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_seen_within_15_ongoing"

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_WITHIN_15_MAX_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_seen_within_15_max"

    .line 156
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_notification_interaction:I

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_interaction_instant"

    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 165
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_interaction_ongoing"

    .line 164
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_notification_interaction_max"

    .line 168
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_widget_interaction:I

    .line 173
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_widget_interaction_instant"

    .line 172
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 177
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_widget_interaction_ongoing"

    .line 176
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 181
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_widget_interaction_max"

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_other_interaction:I

    .line 185
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_other_user_interaction_instant"

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 189
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_other_user_interaction_ongoing"

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 193
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_reward_other_user_interaction_max"

    .line 192
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_wakeup_exact_idle:I

    .line 197
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_exact_wakeup_ctp"

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_wakeup_inexact_idle:I

    .line 202
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_inexact_wakeup_ctp"

    .line 201
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_wakeup_exact:I

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_exact_wakeup_ctp"

    .line 206
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_wakeup_inexact:I

    .line 211
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_inexact_wakeup_ctp"

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_nonwakeup_exact_idle:I

    .line 216
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_NONWAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_exact_nonwakeup_ctp"

    .line 214
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_nonwakeup_exact:I

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_exact_nonwakeup_ctp"

    .line 220
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_nonwakeup_inexact_idle:I

    .line 226
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_inexact_nonwakeup_ctp"

    .line 224
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_nonwakeup_inexact:I

    .line 230
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_CTP_CAKES:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_inexact_nonwakeup_ctp"

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->tare_alarm_clock:I

    .line 234
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_CTP_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_alarmclock_ctp"

    .line 233
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 239
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_exact_wakeup_base_price"

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 244
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_inexact_wakeup_base_price"

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 248
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_exact_wakeup_base_price"

    .line 247
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 252
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_inexact_wakeup_base_price"

    .line 251
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 257
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_exact_nonwakeup_base_price"

    .line 255
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 261
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_exact_nonwakeup_base_price"

    .line 260
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 266
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_allow_while_idle_inexact_nonwakeup_base_price"

    .line 264
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 270
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-wide v6, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    invoke-direct {v1, v2, v6, v7, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v2, "am_action_alarm_inexact_nonwakeup_base_price"

    .line 269
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 274
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-wide v2, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_BASE_PRICE_CAKES:J

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string p0, "am_action_alarm_alarmclock_base_price"

    .line 273
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initJobSchedulerMap()V
    .locals 18

    move-object/from16 v0, p0

    .line 284
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_min_balance_exempted:I

    .line 285
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_min_satiated_balance_exempted"

    .line 284
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_min_balance_headless_app:I

    .line 289
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_HEADLESS_SYSTEM_APP_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_min_satiated_balance_headless_system_app"

    .line 288
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_min_balance_other_app:I

    .line 293
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_min_satiated_balance_other_app"

    .line 292
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_max_satiated_balance:I

    .line 297
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_MAX_SATIATED_BALANCE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_max_satiated_balance"

    .line 296
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_initial_consumption_limit:I

    .line 301
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_initial_consumption_limit"

    .line 300
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_hard_consumption_limit:I

    .line 305
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_HARD_CONSUMPTION_LIMIT_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_hard_consumption_limit"

    .line 304
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_top_activity:I

    .line 309
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_top_activity_instant"

    .line 308
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 313
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v7, 0x1dcd6500

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_top_activity_ongoing"

    .line 312
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 317
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_top_activity_max"

    .line 316
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_notification_seen:I

    .line 321
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_notification_seen_instant"

    .line 320
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 325
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_notification_seen_ongoing"

    .line 324
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 329
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_notification_seen_max"

    .line 328
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_notification_interaction:I

    .line 333
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_notification_interaction_instant"

    .line 332
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 337
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_notification_interaction_ongoing"

    .line 336
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 341
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_notification_interaction_max"

    .line 340
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_widget_interaction:I

    .line 345
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_widget_interaction_instant"

    .line 344
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 349
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_widget_interaction_ongoing"

    .line 348
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 353
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_widget_interaction_max"

    .line 352
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_other_interaction:I

    .line 357
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_other_user_interaction_instant"

    .line 356
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 361
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_other_user_interaction_ongoing"

    .line 360
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 365
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_reward_other_user_interaction_max"

    .line 364
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->tare_job_max_start:I

    .line 369
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_CTP_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_max_start_ctp"

    .line 368
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/settings/R$string;->tare_job_max_running:I

    .line 373
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v7, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_CTP_CAKES:J

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_max_running_ctp"

    .line 372
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$string;->tare_job_high_start:I

    .line 377
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v8, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_CTP_CAKES:J

    invoke-direct {v2, v3, v8, v9, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_high_start_ctp"

    .line 376
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$string;->tare_job_high_running:I

    .line 381
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v9, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_CTP_CAKES:J

    invoke-direct {v2, v3, v9, v10, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_high_running_ctp"

    .line 380
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/settings/R$string;->tare_job_default_start:I

    .line 385
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v10, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_CTP_CAKES:J

    invoke-direct {v2, v3, v10, v11, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_default_start_ctp"

    .line 384
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/settings/R$string;->tare_job_default_running:I

    .line 389
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v11, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_CTP_CAKES:J

    invoke-direct {v2, v3, v11, v12, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_default_running_ctp"

    .line 388
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/android/settings/R$string;->tare_job_low_start:I

    .line 393
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v12, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_CTP_CAKES:J

    invoke-direct {v2, v3, v12, v13, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_low_start_ctp"

    .line 392
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/android/settings/R$string;->tare_job_low_running:I

    .line 398
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v13, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_CTP_CAKES:J

    invoke-direct {v2, v3, v13, v14, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_low_running_ctp"

    .line 396
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/android/settings/R$string;->tare_job_min_start:I

    .line 402
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v14, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_CTP_CAKES:J

    invoke-direct {v2, v3, v14, v15, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_min_start_ctp"

    .line 401
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/android/settings/R$string;->tare_job_min_running:I

    .line 407
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v16, v14

    sget-wide v14, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_CTP_CAKES:J

    invoke-direct {v2, v3, v14, v15, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_min_running_ctp"

    .line 405
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/android/settings/R$string;->tare_job_timeout_penalty:I

    .line 411
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v17, v14

    sget-wide v14, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_CTP_CAKES:J

    invoke-direct {v2, v3, v14, v15, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_timeout_penalty_ctp"

    .line 410
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 415
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v14, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_START_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v14, v15, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_max_start_base_price"

    .line 414
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 420
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MAX_RUNNING_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_max_running_base_price"

    .line 418
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 425
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_START_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_high_start_base_price"

    .line 423
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 429
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_HIGH_RUNNING_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_high_running_base_price"

    .line 428
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 433
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_START_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_default_start_base_price"

    .line 432
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 438
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_DEFAULT_RUNNING_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_default_running_base_price"

    .line 436
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 442
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_START_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_low_start_base_price"

    .line 441
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 447
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_LOW_RUNNING_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_low_running_base_price"

    .line 445
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    .line 451
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_START_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_min_start_base_price"

    .line 450
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v3, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    move/from16 v4, v16

    .line 455
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_MIN_RUNNING_BASE_PRICE_CAKES:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v3, "js_action_job_min_running_base_price"

    .line 454
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, v0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    iget-object v0, v0, Lcom/android/settings/development/tare/TareFactorController;->mResources:Landroid/content/res/Resources;

    move/from16 v3, v17

    .line 459
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-wide v3, Landroid/app/tare/EconomyManager;->DEFAULT_JS_ACTION_JOB_TIMEOUT_PENALTY_BASE_PRICE_CAKES:J

    invoke-direct {v2, v0, v3, v4, v6}, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;-><init>(Ljava/lang/String;JI)V

    const-string v0, "js_action_job_timeout_penalty_base_price"

    .line 458
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parseAlarmManagerGlobalSettings()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerConstants:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/development/tare/TareFactorController;->parseSettingsIntoMap(Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method private parseJobSchedulerGlobalSettings()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerConstants:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/development/tare/TareFactorController;->parseSettingsIntoMap(Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method private parseSettingsIntoMap(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/development/tare/TareFactorController$TareFactorData;",
            ">;)V"
        }
    .end annotation

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TareFactorController"

    const-string v1, "Bad string constants value"

    .line 482
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    :goto_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_0

    .line 486
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    .line 488
    iget-object v2, p0, Lcom/android/settings/development/tare/TareFactorController;->mParser:Landroid/util/KeyValueListParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->defaultValue:J

    invoke-static {v0, v2, v3}, Landroid/app/tare/EconomyManager;->parseCreditValue(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->currentValue:J

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method private rebuildPolicyConstants(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/tare/TareFactorController;->mJobSchedulerMap:Landroid/util/ArrayMap;

    const-string/jumbo v0, "tare_job_scheduler_constants"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/tare/TareFactorController;->writeConstantsToSettings(Landroid/util/ArrayMap;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_1
    iget-object p1, p0, Lcom/android/settings/development/tare/TareFactorController;->mAlarmManagerMap:Landroid/util/ArrayMap;

    const-string/jumbo v0, "tare_alarm_manager_constants"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/tare/TareFactorController;->writeConstantsToSettings(Landroid/util/ArrayMap;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private writeConstantsToSettings(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/development/tare/TareFactorController$TareFactorData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 589
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    .line 590
    iget-wide v4, v3, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->currentValue:J

    iget-wide v6, v3, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->defaultValue:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_1

    .line 594
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ","

    .line 595
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 600
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-wide v3, v3, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->currentValue:J

    const-wide/32 v5, 0x3b9aca00

    rem-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 602
    div-long/2addr v3, v5

    .line 603
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "A"

    .line 604
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 607
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ck"

    .line 608
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_3
    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public createDialog(Ljava/lang/String;)Lcom/android/settings/development/tare/TareFactorDialogFragment;
    .locals 8

    .line 621
    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/TareFactorController;->getFactorType(Ljava/lang/String;)I

    move-result v5

    .line 622
    new-instance v7, Lcom/android/settings/development/tare/TareFactorDialogFragment;

    invoke-direct {p0, p1, v5}, Lcom/android/settings/development/tare/TareFactorController;->getTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-direct {p0, p1, v5}, Lcom/android/settings/development/tare/TareFactorController;->getCurrentValue(Ljava/lang/String;I)J

    move-result-wide v3

    move-object v0, v7

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/development/tare/TareFactorDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;JILcom/android/settings/development/tare/TareFactorController;)V

    return-object v7
.end method

.method getValue(Ljava/lang/String;)J
    .locals 1

    .line 544
    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/TareFactorController;->getFactorType(Ljava/lang/String;)I

    move-result v0

    .line 545
    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/tare/TareFactorController;->getCurrentValue(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method notifyListeners()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorController;->mDataChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorController;->mDataChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;

    invoke-interface {v1}, Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;->onDataChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method registerListener(Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;)V
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mDataChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method unregisterListener(Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;)V
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorController;->mDataChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateValue(Ljava/lang/String;JI)V
    .locals 2

    .line 557
    invoke-direct {p0, p4}, Lcom/android/settings/development/tare/TareFactorController;->getMap(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 559
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;

    .line 560
    iget-wide v0, p1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->currentValue:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    iput-wide p2, p1, Lcom/android/settings/development/tare/TareFactorController$TareFactorData;->currentValue:J

    .line 564
    invoke-direct {p0, p4}, Lcom/android/settings/development/tare/TareFactorController;->rebuildPolicyConstants(I)V

    return-void
.end method
