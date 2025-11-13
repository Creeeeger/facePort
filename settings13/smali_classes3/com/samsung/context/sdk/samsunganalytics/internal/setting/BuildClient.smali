.class public Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;
.super Ljava/lang/Object;
.source "BuildClient.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# instance fields
.field private config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private context:Landroid/content/Context;

.field private logUri:Landroid/net/Uri;

.field private settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.sec.android.log.diagmonagent.sa/log"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->logUri:Landroid/net/Uri;

    .line 30
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 12

    .line 41
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;->isAgreement()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "user do not agree setting"

    .line 42
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->settings:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->registerReceiver(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :cond_2
    const/4 v0, 0x7

    .line 55
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "status_sent_date"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "do not send setting < 7days"

    .line 56
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    return v1

    :cond_3
    const-string v0, "send setting"

    .line 60
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v6, "ts"

    .line 64
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "t"

    const-string v7, "st"

    .line 65
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "v"

    const-string v7, "6.05.015"

    .line 66
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    .line 67
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tz"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isUseAnonymizeIp()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "aip"

    const-string v7, "1"

    .line 70
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getOverrideIp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, "oip"

    .line 73
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_4
    new-instance v6, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;

    invoke-direct {v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;-><init>()V

    .line 78
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->settings:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :cond_5
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "sti"

    .line 79
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 81
    iget-object v10, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v10}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "tcType"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    iget-object v10, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v10}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tid"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v10

    const-string v11, "logType"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "timeStamp"

    .line 84
    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {v6, v0, v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "body"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v10, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->logUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_5

    .line 93
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send SettingLog Result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    if-nez v9, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    .line 101
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 101
    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 104
    :cond_7
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 105
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Save Setting Result = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_3
    const-string p0, "Setting Sender"

    const-string v0, "No status log"

    .line 47
    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public run()V
    .locals 2

    .line 36
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->read()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;->settings:Ljava/util/List;

    return-void
.end method
