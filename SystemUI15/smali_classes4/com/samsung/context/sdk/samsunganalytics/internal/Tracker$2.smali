.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

.field public final synthetic val$application:Landroid/app/Application;

.field public final synthetic val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "appVersionForInit"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const-string v8, "SamsungAnalyticsPrefs"

    if-eqz v5, :cond_0

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendSettings(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendProperties(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$application:Landroid/app/Application;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    const-string v1, "RegisterLogSender sendLog"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;

    invoke-direct {v1, p0, v7, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;)V

    iget-object p0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    const-string v0, "SATerms"

    invoke-virtual {p0, v0, v6}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Send previous agreement, timestamp : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    move-result-object v0

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;

    iget-object v8, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    new-instance v12, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;

    invoke-direct {v12, v1, v9, v10, v11}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;Ljava/lang/String;J)V

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    if-eq v0, p0, :cond_6

    sget p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    const/4 v3, 0x2

    if-lt p0, v3, :cond_5

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->getAction()Ljava/lang/String;

    move-result-object p0

    iget-object v4, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Send broadcast for "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", tid : "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.diagmonagent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    const-string v7, "tid"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "agree"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v5, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->DELETE_SENSITIVE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    if-ne v0, v5, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "event_type"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v4}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    sget p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    if-ne p0, v3, :cond_5

    iget-object p0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    invoke-static {p0, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Send agreement, timestamp : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    move-result-object p0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;

    iget-object v4, v2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    new-instance v8, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;

    iget-object v5, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->deviceId:Ljava/lang/String;

    invoke-direct {v8, v1, v5, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;Ljava/lang/String;J)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_7
    return-void
.end method
