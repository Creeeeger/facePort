.class public Lcom/samsung/android/settings/logging/SALogging;
.super Ljava/lang/Object;
.source "SALogging.java"


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static mContext:Landroid/content/Context;

.field private static mRes:Landroid/content/res/Resources;

.field private static sSAInstance:Lcom/samsung/android/settings/logging/SALogging;


# direct methods
.method public static synthetic $r8$lambda$Xp3B3OtxuIPkMyUSv30cE3NWJ_o(Lcom/samsung/android/settings/logging/SALogging;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->lambda$gettingData$0(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/logging/SALogging;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sput-object p1, Lcom/samsung/android/settings/logging/SALogging;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/logging/SALogging;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method private doGettingData(Landroid/content/Context;)V
    .locals 1

    const-string p0, "Settings_SA_SALogging"

    const-string v0, "doGettingData start"

    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->getStatusLoggingAPIData(Landroid/content/Context;)V

    .line 82
    invoke-static {p1}, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->getStatusLoggingDBData(Landroid/content/Context;)V

    const-string p1, "doGettingData end"

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doSendingData(Landroid/content/Context;)V
    .locals 8

    const-string p0, "Settings_SA_SALogging"

    const-string v0, "doSendingData start"

    .line 87
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/samsung/android/settings/logging/status/SharedPreferencesHelper;->getAllPreferences(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "doSendingData data is null end"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    move v3, v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "not_set"

    .line 98
    invoke-static {p1, v4, v5}, Lcom/samsung/android/settings/logging/status/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send log key : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    .line 103
    invoke-virtual {v0, v4, v6}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 107
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    .line 108
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;-><init>()V

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$QuickSettingBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    const-string p1, "doSendingData end"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/logging/SALogging;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/logging/SALogging;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/logging/SALogging;->sSAInstance:Lcom/samsung/android/settings/logging/SALogging;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/samsung/android/settings/logging/SALogging;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/logging/SALogging;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/logging/SALogging;->sSAInstance:Lcom/samsung/android/settings/logging/SALogging;

    .line 59
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/logging/SALogging;->sSAInstance:Lcom/samsung/android/settings/logging/SALogging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static insertSALog(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x270f

    .line 117
    invoke-static {p0, v0, v0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x270f

    .line 121
    invoke-static {p0, p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x270f

    .line 128
    invoke-static {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 133
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/logging/SALogging;->printSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "det"

    .line 136
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 139
    :try_start_0
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    .line 140
    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    .line 141
    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    :cond_0
    const-wide/16 p0, -0x270f

    cmp-long p0, p3, p0

    if-eqz p0, :cond_1

    .line 146
    invoke-virtual {v1, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 148
    :cond_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    goto :goto_0

    .line 150
    :cond_2
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    .line 151
    invoke-virtual {p1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    .line 152
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Settings_SA_SALogging"

    const-string p2, "Exception occurred while SA logging"

    .line 155
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object p1, Lcom/samsung/android/settings/logging/SALogging;->DBG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    :try_start_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    .line 208
    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    .line 209
    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 210
    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    .line 211
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Settings_SA_SALogging"

    const-string p2, "Exception occurred while SA logging"

    .line 213
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object p1, Lcom/samsung/android/settings/logging/SALogging;->DBG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$gettingData$0(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/samsung/android/settings/logging/status/SharedPreferencesHelper;->clearPreferences(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->doGettingData(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->doSendingData(Landroid/content/Context;)V

    return-void
.end method

.method public static printSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SA Logging screenID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    if-eqz p1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " eventID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " detail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, -0x270f

    cmp-long p2, p3, v1

    if-eqz p2, :cond_2

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, p0

    :goto_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 168
    sget-object p3, Lcom/samsung/android/settings/logging/SALogging;->DBG:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    sget-object p3, Lcom/samsung/android/settings/logging/SALogging;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_9

    const-string p3, "Settings_SA_SALogging"

    .line 169
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object p4, Lcom/samsung/android/settings/logging/SALogging;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string v0, "sa_logging_check_state"

    const/4 v1, 0x0

    invoke-static {p4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p4

    const/4 v0, 0x2

    const-string v2, "Flow "

    if-eq p4, v0, :cond_7

    const/4 v0, 0x3

    const-string v3, "Event "

    const/16 v4, 0x2328

    if-eq p4, v0, :cond_6

    const/4 v0, 0x4

    if-eq p4, v0, :cond_3

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 186
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_5

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Entrance "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 189
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_8

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v4, :cond_8

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_3
    if-eqz p4, :cond_9

    .line 195
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 196
    sget-object p1, Lcom/samsung/android/settings/logging/SALogging;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string p0, "Exception occurred while SA logging print"

    .line 198
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public gettingData(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->checkLoggingInterval(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/samsung/android/settings/logging/SALogging$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/logging/SALogging$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/logging/SALogging;Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "Settings_SA_SALogging"

    const-string p1, "It has not been a week since last logging"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
