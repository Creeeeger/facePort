.class public Lcom/android/systemui/util/QsStatusEventLog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final BIG_DATA_WEEKLY_TIME_STORED_IN_MILLI_SECONDS:Ljava/lang/String; = "big_data_weekly_time_stored_in_milliseconds"

.field private static final PREFS:Ljava/lang/String; = "QsStatusEventLog_prefs"

.field private static final SA_QS_STATUS_EVENT_LOG_SENDING_DELAY:Ljava/lang/Long;

.field private static final SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;

.field private static final TAG:Ljava/lang/String; = "QsStatusEventLog"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mPanelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;


# direct methods
.method public static synthetic $r8$lambda$JdpFVgCf7LD1GsbwaiwC6YfCGw0(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/util/QsStatusEventLog;->lambda$sendStatusEventLog$1(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NTmdgmiR6XHaiYBD2WYzBjEMjOw(Lcom/android/systemui/util/QsStatusEventLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/QsStatusEventLog;->checkWeeklyStatus()V

    return-void
.end method

.method public static synthetic $r8$lambda$vcG7_tE56kAsh8lCPkhWF4rzGDE(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/util/QsStatusEventLog;->lambda$sendStatusEventLog$0(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x240c8400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/QsStatusEventLog;->SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/QsStatusEventLog;->SA_QS_STATUS_EVENT_LOG_SENDING_DELAY:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHost:Lcom/android/systemui/qs/QSTileHost;

    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mPanelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/util/QsStatusEventLog;->startTimer()V

    return-void
.end method

.method private checkWeeklyStatus()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    const-string v3, "QsStatusEventLog_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "big_data_weekly_time_stored_in_milliseconds"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/QsStatusEventLog;->updateTime(J)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/systemui/util/QsStatusEventLog;->SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "QsStatusEventLog"

    const-string v3, " time difference greater than seven days. Send Weekly status logs."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/QsStatusEventLog;->updateTime(J)V

    invoke-direct {p0}, Lcom/android/systemui/util/QsStatusEventLog;->sendStatusEventLog()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendStatusEventLog$0(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lcom/android/systemui/plugins/qs/SQSTile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/plugins/qs/SQSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/SQSTile;->getTileMapKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPBSE1001"

    const-string v1, "active"

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$sendStatusEventLog$1(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lcom/android/systemui/plugins/qs/SQSTile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/plugins/qs/SQSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/SQSTile;->getTileMapKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPBSE1002"

    const-string v1, "active"

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendStatusEventLog()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v2, v2, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v5, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v1, v7}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;I)V

    sget-object v4, Lcom/android/systemui/util/QsStatusEventLog;->SA_QS_STATUS_EVENT_LOG_SENDING_DELAY:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v9, v3

    mul-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v4, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v1, v6}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/systemui/util/QsStatusEventLog;->SA_QS_STATUS_EVENT_LOG_SENDING_DELAY:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    int-to-long v8, v3

    mul-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/QsStatusEventLog;->mPanelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lcom/android/systemui/util/QsStatusEventLog;->SA_QS_STATUS_EVENT_LOG_SENDING_DELAY:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-int/lit8 v6, v3, 0x1

    int-to-long v7, v3

    mul-long/2addr v4, v7

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mPanelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-int/lit8 v3, v3, 0x2

    int-to-long v5, v6

    mul-long/2addr v7, v5

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/util/QsStatusEventLog;->mPanelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private updateTime(J)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    const-string v0, "QsStatusEventLog_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "big_data_weekly_time_stored_in_milliseconds"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public startTimer()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "WeeklySALogging"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
