.class public Lcom/android/settings/applications/AppStateNotificationBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTI_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTI_BLOCKABLE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTI_CHANNEL_ALL_NONBLOCKABLE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mContext:Landroid/content/Context;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field protected mUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 283
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 298
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 313
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$3;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 329
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$4;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 344
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$5;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_BLOCKABLE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 359
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$6;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_CHANNEL_ALL_NONBLOCKABLE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 375
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$7;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$7;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    .line 391
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$8;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$8;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    const-string p2, "AppStateNotificationBridge"

    .line 52
    iput-object p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->DEBUG:Z

    .line 64
    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    .line 65
    iput-object p4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 66
    iput-object p6, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p5, p1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 142
    iput-boolean p0, p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    :cond_0
    return-void
.end method

.method private allNotificationChannelsNonBlockable(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p3

    .line 251
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    iput-boolean v1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->allChannelsNonBlockable:Z

    return-void

    :cond_0
    move v0, v1

    .line 255
    :goto_0
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-static {v2, p2, v3}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockableNotificationChannel(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    iput-boolean v1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->allChannelsNonBlockable:Z

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 261
    iput-boolean p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->allChannelsNonBlockable:Z

    return-void
.end method

.method private calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    int-to-float p0, p0

    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    .line 153
    iget p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    .line 154
    iput p0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    :cond_0
    return-void
.end method

.method public static final checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    .line 417
    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 421
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    .line 408
    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 413
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    return p0
.end method

.method protected static getKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

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

    .line 231
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    instance-of v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-eqz v1, :cond_1

    .line 235
    check-cast p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;
    .locals 6

    .line 118
    sget v0, Lcom/android/settings/R$id;->sort_order_recent_notification:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 119
    iget-wide v2, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_0

    .line 120
    sget p1, Lcom/android/settings/R$string;->notifications_sent_never:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    sub-long/2addr v2, p1

    long-to-double p1, v2

    .line 122
    invoke-static {p0, p1, p2, v1}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 124
    :cond_1
    sget v0, Lcom/android/settings/R$id;->sort_order_frequent_notification:I

    if-ne p2, v0, :cond_3

    .line 125
    iget p2, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    const/4 v0, 0x0

    if-lez p2, :cond_2

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->notifications_sent_daily:I

    iget p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 126
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->notifications_sent_weekly:I

    iget p1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 129
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private hasNotificationChannels(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V
    .locals 1

    .line 243
    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-lez p0, :cond_1

    const/4 v0, 0x1

    .line 246
    :cond_1
    iput-boolean v0, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    return-void
.end method

.method public static visibleSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    .line 427
    invoke-static {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 431
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    if-nez v1, :cond_1

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method protected getAggregatedUsageEvents(ILjava/lang/String;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    .locals 9

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v0, 0x240c8400

    sub-long v1, v3, v0

    const/4 v8, 0x0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move v5, p1

    move-object v6, p2

    .line 203
    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p0, v8

    :goto_0
    if-eqz p0, :cond_3

    .line 209
    new-instance p1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 210
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 211
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 213
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    if-nez v8, :cond_1

    .line 215
    new-instance v8, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v8}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    .line 217
    :cond_1
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, v8, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    .line 218
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    .line 220
    :cond_2
    iget p2, v8, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v8, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    goto :goto_1

    :cond_3
    return-object v8
.end method

.method protected getAggregatedUsageEvents()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v1, 0x240c8400

    sub-long v10, v8, v1

    .line 164
    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-wide v2, v10

    move-wide v4, v8

    move v6, v13

    .line 167
    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-eqz v14, :cond_0

    .line 173
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 174
    :cond_1
    :goto_1
    invoke-virtual {v14}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v14, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 177
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-nez v2, :cond_2

    .line 179
    new-instance v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v2}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    .line 180
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 184
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 185
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    .line 187
    :cond_3
    iget v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateNotificationBridge;->getAggregatedUsageEvents()Ljava/util/Map;

    move-result-object v1

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 87
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 88
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    if-nez v3, :cond_1

    .line 91
    new-instance v3, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v3}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    .line 93
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/applications/AppStateNotificationBridge;->calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 94
    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/AppStateNotificationBridge;->addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 95
    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3, v5, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;->hasNotificationChannels(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    .line 96
    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3, v5, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;->allNotificationChannelsNonBlockable(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    .line 97
    iput-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 2

    .line 103
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 104
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getAggregatedUsageEvents(ILjava/lang/String;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;-><init>()V

    .line 109
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStateNotificationBridge;->calculateAvgSentCounts(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/AppStateNotificationBridge;->addBlockStatus(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;)V

    .line 111
    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings/applications/AppStateNotificationBridge;->hasNotificationChannels(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    .line 112
    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings/applications/AppStateNotificationBridge;->allNotificationChannelsNonBlockable(Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Ljava/lang/String;I)V

    .line 113
    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
