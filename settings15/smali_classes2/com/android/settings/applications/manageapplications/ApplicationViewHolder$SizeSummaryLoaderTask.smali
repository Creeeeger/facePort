.class public final Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field public mCurComputingSizePkg:Ljava/lang/String;

.field public mCurComputingSizeUserId:I

.field public mCurComputingSizeUuid:Ljava/util/UUID;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mStats:Landroid/app/usage/StorageStatsManager;

.field public final mWhich:I

.field public final synthetic this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput p4, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mWhich:I

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mStats:Landroid/app/usage/StorageStatsManager;

    return-void
.end method

.method public static getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v2, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/settingslib/applications/AppUtils;->isArchived(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v2, :cond_3

    :cond_1
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v2, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizePkg:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUserId:I

    :try_start_0
    iget-object v2, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v3, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v4, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizePkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    new-instance v2, Landroid/content/pm/PackageStats;

    iget-object v3, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizePkg:Ljava/lang/String;

    iget v4, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mCurComputingSizeUserId:I

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    iget-wide v5, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v7, v2, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v5, v7

    iget-wide v7, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v9, v2, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v7, v9

    add-long v9, v5, v7

    iget-wide v11, v2, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v13, v2, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-long v15, v11, v13

    sub-long/2addr v15, v3

    add-long/2addr v9, v15

    move-object/from16 p1, v2

    :try_start_1
    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-object/from16 v15, p1

    move-wide/from16 v16, v7

    iget-wide v7, v15, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :cond_2
    move-object/from16 v15, p1

    move-wide/from16 v16, v7

    :goto_1
    iput-wide v9, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    iput-wide v11, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    iput-wide v13, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    iput-wide v5, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-wide/from16 v7, v16

    iput-wide v7, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iget-wide v1, v15, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, p0

    :try_start_2
    invoke-virtual {v1, v9, v10}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v15, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, v15, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    iget-wide v4, v15, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v15}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-object v0, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_2
    iget-object v1, v1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const-wide/16 v2, -0x2

    iput-wide v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSizeStr(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p0}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCancelled()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSizeSummaryLoaderTask:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mWhich:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSizeSummaryLoaderTask:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f1409b2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_2

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v3, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f14235e

    invoke-static {v1, v2, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f1422f0

    invoke-static {v1, v2, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;->this$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
