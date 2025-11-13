.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# instance fields
.field public final mActiveItems:Ljava/util/HashMap;

.field public mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field public mAm:Landroid/app/ActivityManager;

.field public mAppsProcessPrefix:Landroid/widget/TextView;

.field public mAppsProcessText:Landroid/widget/TextView;

.field public mBackgroundProcessText:Landroid/widget/TextView;

.field public final mBuilder:Ljava/lang/StringBuilder;

.field public mColorBar:Landroid/widget/ProgressBar;

.field public mCurHighRam:J

.field public mCurLowRam:J

.field public mCurMedRam:J

.field public mCurShowCached:Z

.field public mCurTotalRam:J

.field public mDataAvail:Ljava/lang/Runnable;

.field public mForegroundProcessPrefix:Landroid/widget/TextView;

.field public mForegroundProcessText:Landroid/widget/TextView;

.field public mHeader:Landroid/view/View;

.field public mListView:Landroid/widget/ListView;

.field public final mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field public mOwner:Lcom/android/settings/SettingsPreferenceFragment;

.field public mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurTotalRam:J

    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurHighRam:J

    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurMedRam:J

    iput-wide p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurLowRam:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz p3, :cond_0

    const-string p4, "uid"

    iget p3, p3, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p3, p3, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const-string p4, "process"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, "user_id"

    iget p1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean p1, p1, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    const-string p3, "background"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p3, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p3, p4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p2, p4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p2, 0x0

    const p3, 0x7f141f6d

    invoke-virtual {p1, p3, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    iput p0, p4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_1
    return-void
.end method

.method public final onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onRefreshUi(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes$1()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes$1()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes$1()V

    :goto_0
    return-void
.end method

.method public final refreshUi(Z)V
    .locals 10

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141f65

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141f5f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141f63

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141f5e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurShowCached:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v4, v4, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v5, v4, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    add-long/2addr v2, v5

    iget-wide v4, v4, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    :goto_1
    sub-long v6, v0, v4

    sub-long/2addr v6, v2

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurTotalRam:J

    cmp-long v8, v8, v0

    if-nez v8, :cond_5

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurHighRam:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_5

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurMedRam:J

    cmp-long v8, v8, v4

    if-nez v8, :cond_5

    iget-wide v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurLowRam:J

    cmp-long v8, v8, v2

    if-eqz v8, :cond_6

    :cond_5
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurTotalRam:J

    iput-wide v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurHighRam:J

    iput-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurMedRam:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurLowRam:J

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    long-to-float v2, v6

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Landroid/widget/ProgressBar;

    long-to-float v3, v4

    div-float/2addr v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_6
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateTimes$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method
