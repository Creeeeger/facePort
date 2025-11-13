.class public final Lcom/android/settings/applications/AppStateNotificationBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settings/applications/AppStateNotificationBridge$1;

.field public static final FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settings/applications/AppStateNotificationBridge$1;

.field public static final FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settings/applications/AppStateNotificationBridge$1;

.field public static final FILTER_APP_NOTI_ALL:Lcom/android/settings/applications/AppStateNotificationBridge$1;

.field public static final FILTER_APP_NOTI_BLOCKABLE:Lcom/android/settings/applications/AppStateNotificationBridge$1;

.field public static final FREQUENCY_NOTIFICATION_COMPARATOR:Lcom/android/settings/applications/AppStateNotificationBridge$7;

.field public static final RECENT_NOTIFICATION_COMPARATOR:Lcom/android/settings/applications/AppStateNotificationBridge$7;


# instance fields
.field public final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field public final mContext:Landroid/content/Context;

.field public final mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field public final mUserIds:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_ALL:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_BLOCKABLE:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge$7;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Lcom/android/settings/applications/AppStateNotificationBridge$7;

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge$7;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Lcom/android/settings/applications/AppStateNotificationBridge$7;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iput-object p6, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {p5, p0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p0

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;
    .locals 4

    const v0, 0x7f0a0eae

    if-ne p2, v0, :cond_1

    iget-wide v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const p1, 0x7f141b27

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    sub-long/2addr v0, p1

    long-to-double p1, v0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f0a0ead

    if-ne p2, v0, :cond_3

    iget p2, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1425fb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1425fc

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final allNotificationChannelsNonBlockable(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p2, p3, v0}, Landroid/app/INotificationManager;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p3

    :goto_0
    iget-boolean v1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->allChannelsNonBlockable:Z

    return-void

    :cond_0
    move v1, v0

    :goto_1
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-static {v2, p2, v3}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockableNotificationChannel(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->allChannelsNonBlockable:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->allChannelsNonBlockable:Z

    return-void
.end method

.method public final isNotificationPermissionDeclared(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->isPermissionDeclared:Z

    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const/16 v0, 0x1000

    invoke-virtual {p0, p2, v0, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x20

    if-le p2, p3, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/settings/applications/AppStateNotificationBridge$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->isPermissionDeclared:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public final loadAllExtraInfo()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v4, 0x240c8400

    sub-long v13, v11, v4

    iget-object v0, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v16, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :try_start_0
    iget-object v4, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v0, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v5, v13

    move-wide v7, v11

    move v9, v10

    move-wide/from16 v17, v11

    move v11, v10

    move-object v10, v0

    :try_start_1
    invoke-interface/range {v4 .. v10}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v17, v11

    move v11, v10

    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v4}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :cond_0
    :goto_3
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v5}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_0

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    :cond_2
    iget v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    goto :goto_3

    :cond_3
    move-wide/from16 v11, v17

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v4}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    :cond_5
    iget v5, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    int-to-float v5, v5

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    iget v5, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_6

    iput v5, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    :cond_6
    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(ILjava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    iget-object v5, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v1, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-static {v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(ILjava/lang/String;)I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v8

    :goto_5
    if-lez v5, :cond_8

    move/from16 v8, v16

    :cond_8
    iput-boolean v8, v4, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4, v6, v5}, Lcom/android/settings/applications/AppStateNotificationBridge;->allNotificationChannelsNonBlockable(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4, v6, v5}, Lcom/android/settings/applications/AppStateNotificationBridge;->isNotificationPermissionDeclared(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    iput-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_9
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v0, 0x240c8400

    sub-long v2, v4, v0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v8, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    :cond_1
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    :cond_2
    iget v4, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    :cond_4
    iget v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    int-to-float v1, v1

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    iget v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    const/4 v3, 0x7

    if-ge v1, v3, :cond_5

    iput v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    :cond_5
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(ILjava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-static {p3, p2}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(ILjava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    if-lez v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settings/applications/AppStateNotificationBridge;->allNotificationChannelsNonBlockable(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->isNotificationPermissionDeclared(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
