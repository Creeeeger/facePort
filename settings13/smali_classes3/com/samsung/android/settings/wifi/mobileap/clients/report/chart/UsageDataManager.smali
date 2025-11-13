.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$Holder;
    }
.end annotation


# instance fields
.field private mCachedDailyData:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;

.field private mCachedWeeklyData:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedWeeklyUsageData;

.field private mContext:Landroid/content/Context;

.field private mDateChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mUsageLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageData;",
            ">;>;"
        }
    .end annotation
.end field

.field private trimmable:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MemoryTrimmable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mUsageLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedListenerList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mDateChangedListenerList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->trimmable:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MemoryTrimmable;

    .line 639
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;-><init>()V

    return-void
.end method

.method private addRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 756
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$Holder;->INSTANCE:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->init(Landroid/content/Context;)V

    return-object v0
.end method

.method private getRequest()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 778
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    .line 789
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 790
    monitor-exit v0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    .line 793
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 794
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 71
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mCachedDailyData:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;

    .line 75
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedWeeklyUsageData;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedWeeklyUsageData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mCachedWeeklyData:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedWeeklyUsageData;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mUsageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mCachedDailyData:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->getDataList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->trimmable:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MemoryTrimmable;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TrimMemDispatcher;->addTrimMemoryListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/MemoryTrimmable;)Z

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getSystemBootTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->setPrevSystemBootTime(J)V

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    .line 765
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 766
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 769
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private retrieve()V
    .locals 5

    .line 614
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mRequestDataList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getRequest()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    move-result-object v1

    if-nez v1, :cond_0

    .line 617
    monitor-exit v0

    return-void

    .line 620
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getStatus()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;->PROGRESSING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    if-ne v2, v3, :cond_1

    .line 621
    monitor-exit v0

    return-void

    .line 625
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RETRIEVE_ALL_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    if-eq v2, v4, :cond_3

    .line 626
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RETRIEVE_DAILY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    if-eq v2, v4, :cond_3

    .line 627
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->UPDATE_DATABASE:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->setStatus(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;)V

    .line 636
    monitor-exit v0

    return-void

    .line 628
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->removeRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)V

    .line 629
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->retrieve()V

    .line 630
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setPrevSystemBootTime(J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public changeDate()V
    .locals 3

    .line 540
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->DATE_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getStatus()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;->PROGRESSING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    if-eq v1, v2, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->addRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;)V

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->retrieve()V

    return-void
.end method

.method public changeTime()V
    .locals 3

    .line 527
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->TIME_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getStatus()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;->PROGRESSING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    if-eq v1, v2, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->addRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;)V

    .line 535
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->retrieve()V

    return-void
.end method

.method public changeTimeZone()V
    .locals 3

    .line 551
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->TIME_ZONE_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->getStatus()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;->PROGRESSING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    if-eq v1, v2, :cond_0

    return-void

    .line 556
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->addRequest(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;)V

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->retrieve()V

    return-void
.end method

.method public getCurrentTodayTime()J
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mCachedDailyData:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->getLastUpdatedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 590
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mCachedDailyData:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;->getLastUpdatedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiffDays(J)I
    .locals 2

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getCurrentTodayTime()J

    move-result-wide v0

    .line 598
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDiffDays(JJ)I

    move-result p0

    return p0
.end method

.method public setDateChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mDateChangedListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mDateChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mDateChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public setTimeChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public unsetDateChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mDateChangedListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mDateChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unsetTimeChangedListener(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->mTimeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
