.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;
.super Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;

.field public final synthetic val$deviceId:Ljava/lang/String;

.field public final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->val$deviceId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->val$timestamp:J

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;

    iget-object p1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    const-string p2, "SATerms"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->val$deviceId:Ljava/lang/String;

    iget-wide v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->val$timestamp:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->sendRegistrationResult(Z)V

    return-void
.end method

.method public final onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;

    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    const-string v1, "SATerms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->val$deviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->sendRegistrationResult(Z)V

    return-void
.end method

.method public final sendRegistrationResult(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;

    iget-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x364831c8

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getDMAVersion(Landroid/content/Context;)I

    move-result v1

    if-gt v2, v1, :cond_0

    const-string v1, "content://com.sec.android.log.diagmonagent.sa/registrationHistory"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v3, v3, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    const-string/jumbo v4, "tid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;->val$timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v3, "eventTimestamp"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v3, "sendTimestamp"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 p0, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v3, "apiType"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo p1, "result"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    iget-object p0, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Send registration result failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
