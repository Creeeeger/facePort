.class public Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;
.super Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z

.field public static mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;


# instance fields
.field public mDataUsage:Ljava/lang/String;

.field public mDataUsageVisibility:Z

.field public mHandler:Landroid/os/Handler;

.field public mPreDataUsageVisibility:Z

.field public final mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

.field public mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field public mThread:Ljava/lang/Thread;

.field public final mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;


# direct methods
.method public static -$$Nest$mgetDataUsageResult(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DataUsageLabelView"

    const-string/jumbo v1, "query result: "

    const-string v2, ""

    :try_start_0
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "content://com.samsung.android.sm.dcapi"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "getUsageLabel"

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v2

    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v4, v2

    :goto_2
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v4, v2

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query Data Usage fail: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_5
    return-object v2
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mPreDataUsageVisibility:Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    const-string p2, ""

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mPreDataUsageVisibility:Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    const-string p2, ""

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mPreDataUsageVisibility:Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mUpdateRunnable:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$3;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->initView()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final initView()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mPreDataUsageVisibility:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelfManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelCommonView;->onDetachedFromWindow()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mReceiver:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final updateDataText()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v1, 0x7f130e9d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ": "

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data Usage:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsage:Ljava/lang/String;

    const-string v1, "DataUsageLabelView"

    invoke-static {v0, p0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateUsageInfo()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->updateDataText()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;

    const-string/jumbo v1, "updateUsageInfo"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView$2;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const-string p0, "DataUsageLabelView"

    const-string v0, "Last Thread still running"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
