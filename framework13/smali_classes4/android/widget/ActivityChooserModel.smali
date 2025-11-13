.class public Landroid/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;,
        Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final greylist-max-o ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final greylist-max-o ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final greylist-max-o DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final greylist-max-o DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final greylist-max-o DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final greylist-max-o HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final greylist-max-o INVALID_INDEX:I = -0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final greylist-max-o TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final greylist-max-o TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final greylist-max-o sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private greylist-max-o mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

.field private greylist-max-o mCanReadHistoricalData:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHistoricalRecordsChanged:Z

.field private final greylist-max-o mHistoryFileName:Ljava/lang/String;

.field private greylist-max-o mHistoryMaxSize:I

.field private final greylist-max-o mInstanceLock:Ljava/lang/Object;

.field private greylist-max-o mIntent:Landroid/content/Intent;

.field private final greylist-max-o mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private greylist-max-o mReadShareHistoryCalled:Z

.field private greylist-max-o mReloadActivities:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReloadActivities(Landroid/widget/ActivityChooserModel;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 168
    const-class v0, Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 255
    new-instance v0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DataModelPackageMonitor-IA;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 275
    new-instance v2, Landroid/widget/ActivityChooserModel$DefaultSorter;

    invoke-direct {v2, p0, v1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DefaultSorter-IA;)V

    iput-object v2, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 280
    const/16 v2, 0x32

    iput v2, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 290
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 301
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 309
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 314
    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    const-string v4, ".xml"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_0
    iput-object p2, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 371
    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 372
    return-void
.end method

.method private greylist-max-o addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 2
    .param p1, "historicalRecord"    # Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 761
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 762
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 763
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 764
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 765
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 766
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 767
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 769
    :cond_0
    return v0
.end method

.method private greylist-max-o ensureConsistentState()V
    .locals 2

    .line 683
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 684
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 685
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 686
    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 688
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 690
    :cond_0
    return-void
.end method

.method public static greylist get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .line 347
    sget-object v0, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel;

    .line 349
    .local v2, "dataModel":Landroid/widget/ActivityChooserModel;
    if-nez v2, :cond_0

    .line 350
    new-instance v3, Landroid/widget/ActivityChooserModel;

    invoke-direct {v3, p0, p1}, Landroid/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v3

    .line 351
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    monitor-exit v0

    return-object v2

    .line 354
    .end local v2    # "dataModel":Landroid/widget/ActivityChooserModel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o loadActivitiesIfNeeded()Z
    .locals 9

    .line 716
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 717
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 718
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 719
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 720
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 721
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 722
    .local v1, "resolveInfoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 723
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 724
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 725
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 726
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 725
    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    if-nez v5, :cond_0

    .line 728
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v6, p0, v3}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 733
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "resolveInfoCount":I
    :cond_2
    return v1
.end method

.method private greylist-max-o persistHistoricalDataIfNeeded()V
    .locals 6

    .line 589
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-eqz v0, :cond_2

    .line 592
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_0

    .line 593
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 596
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 597
    new-instance v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask-IA;)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 600
    :cond_1
    return-void

    .line 590
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 4

    .line 776
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int/2addr v0, v1

    .line 777
    .local v0, "pruneCount":I
    if-gtz v0, :cond_0

    .line 778
    return-void

    .line 780
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 781
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 782
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o readHistoricalDataIfNeeded()Z
    .locals 2

    .line 744
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 745
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 748
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 749
    return v0

    .line 751
    :cond_0
    return v1
.end method

.method private greylist-max-o readHistoricalDataImpl()V
    .locals 12

    .line 993
    const-string v0, "Error reading historical recrod file: "

    const/4 v1, 0x0

    .line 995
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v2

    .line 1001
    nop

    .line 1003
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1004
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1006
    const/4 v3, 0x0

    .line 1007
    .local v3, "type":I
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    .line 1008
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 1011
    :cond_0
    const-string v5, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1016
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 1017
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1020
    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v6

    .line 1021
    if-ne v3, v4, :cond_2

    .line 1022
    nop

    .line 1053
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    if-eqz v1, :cond_6

    .line 1055
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1024
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "type":I
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_2
    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 1025
    goto :goto_1

    .line 1027
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1028
    .local v6, "nodeName":Ljava/lang/String;
    const-string v7, "historical-record"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1032
    const-string v7, "activity"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1033
    .local v7, "activity":Ljava/lang/String;
    const-string/jumbo v9, "time"

    .line 1034
    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1035
    .local v9, "time":J
    const-string/jumbo v11, "weight"

    .line 1036
    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 1037
    .local v8, "weight":F
    new-instance v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v11, v7, v9, v10, v8}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1038
    .local v11, "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    nop

    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "weight":F
    .end local v9    # "time":J
    .end local v11    # "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    goto :goto_1

    .line 1029
    .restart local v6    # "nodeName":Ljava/lang/String;
    :cond_4
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Share records file not well-formed."

    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Landroid/widget/ActivityChooserModel;
    throw v4

    .line 1012
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v6    # "nodeName":Ljava/lang/String;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/widget/ActivityChooserModel;
    :cond_5
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Share records file does not start with historical-records tag."

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Landroid/widget/ActivityChooserModel;
    throw v4
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1053
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/widget/ActivityChooserModel;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1050
    :catch_0
    move-exception v2

    .line 1051
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_4
    sget-object v3, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1053
    nop

    .end local v2    # "ioe":Ljava/io/IOException;
    if-eqz v1, :cond_6

    .line 1055
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1048
    :catch_1
    move-exception v2

    .line 1049
    .local v2, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    sget-object v3, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1053
    nop

    .end local v2    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_6

    .line 1055
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1058
    :goto_2
    goto :goto_3

    .line 1056
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1061
    :cond_6
    :goto_3
    return-void

    .line 1053
    :goto_4
    if-eqz v1, :cond_7

    .line 1055
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1058
    goto :goto_5

    .line 1056
    :catch_3
    move-exception v2

    .line 1060
    :cond_7
    :goto_5
    throw v0

    .line 996
    :catch_4
    move-exception v0

    .line 1000
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private greylist-max-o sortActivitiesIfNeeded()Z
    .locals 4

    .line 700
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 701
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 703
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 702
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 704
    const/4 v0, 0x1

    return v0

    .line 706
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist chooseActivity(I)Landroid/content/Intent;
    .locals 8
    .param p1, "index"    # I

    .line 479
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 481
    monitor-exit v0

    return-object v2

    .line 484
    :cond_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 486
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 488
    .local v1, "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 493
    .local v4, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 495
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v5, :cond_1

    .line 497
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 498
    .local v5, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6, p0, v5}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v6

    .line 500
    .local v6, "handled":Z
    if-eqz v6, :cond_1

    .line 501
    monitor-exit v0

    return-object v2

    .line 505
    .end local v5    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v6    # "handled":Z
    :cond_1
    new-instance v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 507
    .local v2, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v2}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 509
    monitor-exit v0

    return-object v4

    .line 510
    .end local v1    # "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v4    # "choiceIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 672
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 673
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 674
    return-void
.end method

.method public greylist getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "index"    # I

    .line 431
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 433
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v1, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v0

    return-object v1

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getActivityCount()I
    .locals 2

    .line 415
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 417
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .line 445
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 447
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 448
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 449
    .local v2, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 450
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 451
    .local v4, "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, v4, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v5, p1, :cond_0

    .line 452
    monitor-exit v0

    return v3

    .line 449
    .end local v4    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    monitor-exit v0

    return v3

    .line 456
    .end local v1    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v2    # "activityCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 535
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 537
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v1, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v0

    return-object v1

    .line 540
    :cond_0
    monitor-exit v0

    .line 541
    const/4 v0, 0x0

    return-object v0

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getHistoryMaxSize()I
    .locals 2

    .line 653
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget v1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v0

    return v1

    .line 655
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getHistorySize()I
    .locals 2

    .line 664
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 666
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getIntent()Landroid/content/Intent;
    .locals 2

    .line 401
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v0

    return-object v1

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setActivitySorter(Landroid/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 2
    .param p1, "activitySorter"    # Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 610
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-ne v1, p1, :cond_0

    .line 612
    monitor-exit v0

    return-void

    .line 614
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 615
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 618
    :cond_1
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setDefaultActivity(I)V
    .locals 8
    .param p1, "index"    # I

    .line 555
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 558
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 559
    .local v1, "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 562
    .local v2, "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v2, :cond_0

    .line 564
    iget v3, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v4, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    .local v3, "weight":F
    goto :goto_0

    .line 567
    .end local v3    # "weight":F
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 570
    .restart local v3    # "weight":F
    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .local v4, "defaultName":Landroid/content/ComponentName;
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v4, v6, v7, v3}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 575
    .local v5, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 576
    nop

    .end local v1    # "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "weight":F
    .end local v4    # "defaultName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setHistoryMaxSize(I)V
    .locals 2
    .param p1, "historyMaxSize"    # I

    .line 635
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget v1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    if-ne v1, p1, :cond_0

    .line 637
    monitor-exit v0

    return-void

    .line 639
    :cond_0
    iput p1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 640
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 641
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 644
    :cond_1
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r setIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 385
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v1, p1, :cond_0

    .line 387
    monitor-exit v0

    return-void

    .line 389
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 390
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 391
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 392
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 520
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
