.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doActionNotification()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "noti_actions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    const v2, 0x7f130f83

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    iget-object v3, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onClickExpandButton(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->turnToHeadsUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "turnToHeadsUp"

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    sget-object p0, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->sCurrentScreenID:Ljava/lang/String;

    const-string p1, "QPNE0104"

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onClickToastInWindow()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->sendClickEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onDismissEdgeWindow()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const-string v0, "EdgeLightingService"

    const-string v1, " onDismissEdgeWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->notifyEdgeLightingPackageList(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x1388

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1f4

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const-string v4, "onDismissEdgeWindow"

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->releaseWakeLock()V

    return-void
.end method

.method public final onExtendLightingDuration()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_0

    const/16 v0, 0x157c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->extendLightingDuration(IZ)V

    :cond_0
    return-void
.end method

.method public final onFling(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->sCurrentScreenID:Ljava/lang/String;

    const-string v1, "QPNE0103"

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "2004"

    const-string v1, "From Noti_Swipedown"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " Not activity pending intent. : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EdgeLightingScheduler"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object p2, p2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    const v0, 0x7f13057c

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->sendClickEvent(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onFlingDownInWindow(Z)V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFlingDownInWindow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    instance-of v2, p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    sget v6, Lcom/android/systemui/edgelighting/utils/Utils;->$r8$clinit:I

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0xc2200

    :try_start_0
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_1
    invoke-static {v6}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070354

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7, v1, v1, v6, v2}, Landroid/widget/ImageView;->layout(IIII)V

    new-instance v2, Landroid/content/ClipDescription;

    const-string v6, "application/vnd.android.activity"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "Drag And Drop(E)"

    invoke-direct {v2, v8, v6}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {v6, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.intent.extra.DRAG_AND_DROP_REQUESTER"

    const-string v8, "edgelighting"

    invoke-virtual {v6, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    new-instance v6, Landroid/content/ClipData;

    invoke-direct {v6, v2, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v7}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const v4, 0x100100

    invoke-virtual {p1, v6, v2, v3, v4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " Not activity pending intent. : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "EdgeLightingScheduler"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    const v2, 0x7f13057c

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->sendClickEvent(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onShowEdgeWindow()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const-string v0, "EdgeLightingService"

    const-string v1, " onShowEdgeWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v2, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "smart_view_show_notification_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HideNotificationShadeInMirror updateInternalPresentationWindowFlag()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x80000000

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->notifyEdgeLightingPackageList(Z)V

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/edgelighting/EdgeLightingService$5$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$5$1;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    return-void
.end method

.method public final onSwipeToastInWindow()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$5;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    const-string v1, " , key : "

    const-string v2, " , userid : "

    const-string v3, " id: "

    const-string v4, " , tag :  "

    const-string v5, " swipe cancel pkg: "

    const-string v6, "EdgeLightingScheduler"

    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v7, :cond_3

    iget-object v7, v7, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v7, :cond_2

    iget-object v15, v7, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    :try_start_0
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v12

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v9, v7, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v9}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x0

    const-string v14, "group_key"

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v17, v9

    goto :goto_0

    :cond_0
    move-object/from16 v17, v16

    :goto_0
    move-object v9, v15

    move-object/from16 p0, v0

    move-object v0, v14

    move-object/from16 v14, v17

    :try_start_3
    invoke-virtual/range {v8 .. v14}, Lcom/samsung/android/edge/SemEdgeManager;->cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v5, v15, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , groupKey : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    goto :goto_3

    :catch_0
    :goto_1
    move-object/from16 v0, p0

    goto :goto_2

    :catch_1
    move-object/from16 p0, v0

    goto :goto_1

    :catch_2
    :goto_2
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v12

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v13

    iget-object v9, v7, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/edge/SemEdgeManager;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v5, v15, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_3
    return-void
.end method
