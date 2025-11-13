.class Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;
.super Landroid/os/AsyncTask;
.source "ApplicationViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeSummaryLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mCurComputingSizePkg:Ljava/lang/String;

.field private mCurComputingSizeUserId:I

.field private mCurComputingSizeUuid:Ljava/util/UUID;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private final mStats:Landroid/app/usage/StorageStatsManager;

.field private mWhich:I

.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 410
    iput p4, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mWhich:I

    .line 411
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 412
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mStats:Landroid/app/usage/StorageStatsManager;

    return-void
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Holder.getSizeStr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 510
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 501
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private hasFlag(II)Z
    .locals 0

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 395
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    .line 418
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x800000

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v0, :cond_2

    .line 420
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 421
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizePkg:Ljava/lang/String;

    .line 422
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUserId:I

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizePkg:Ljava/lang/String;

    .line 429
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 426
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p1

    .line 431
    new-instance v0, Landroid/content/pm/PackageStats;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizePkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUserId:I

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 434
    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 435
    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 436
    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 439
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v1, 0x0

    .line 440
    iput-wide v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 441
    iget-wide v1, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v1, v3

    .line 443
    iget-wide v3, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v5, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v3, v5

    add-long v5, v1, v3

    .line 446
    invoke-direct {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 447
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_1

    iget-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v9, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    iget-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v9, v0, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    iget-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v9, v0, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    iget-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v7, v7, v1

    if-nez v7, :cond_1

    iget-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_1

    iget-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    iget-wide v9, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 454
    :cond_1
    iput-wide v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    .line 455
    iget-wide v7, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 456
    iget-wide v7, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 457
    iget-wide v7, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v7, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 458
    iput-wide v1, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    .line 459
    iput-wide v3, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    .line 460
    iget-wide v1, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v1, p1, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    .line 461
    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 462
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 463
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 464
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 465
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 468
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->-$$Nest$fputmSizeSummaryLoaderTask(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 395
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 477
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mWhich:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    .line 478
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->-$$Nest$fputmSizeSummaryLoaderTask(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;)V

    .line 480
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->-$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v2, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 488
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
