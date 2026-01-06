.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;
.super Ljava/lang/Object;
.source "DLSAPIClient.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# static fields
.field private static final DEFAULT_TIMEOUT_IN_MILLISECONDS:I = 0xbb8

.field private static final MAX_TIMEOUT_IN_MILLISECONDS:I = 0x3a98

.field private static final REALTIME_API:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field private static final RTB_API:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;


# instance fields
.field private asyncTaskCallback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

.field private conn:Ljavax/net/ssl/HttpsURLConnection;

.field private isBatch:Ljava/lang/Boolean;

.field private logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

.field private logs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation
.end field

.field private simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

.field private timeoutInMilliseconds:I

.field private trid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->REALTIME_API:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->RTB_API:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->trid:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    invoke-direct {p0, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->getTimeout(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->timeoutInMilliseconds:I

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->trid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    invoke-direct {p0, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->getTimeout(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->timeoutInMilliseconds:I

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

.method private callback(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const-string v0, "1000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private cleanUp(Ljava/io/BufferedReader;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private getBody()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u000e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeout(I)I
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xbb8

    return v0

    :cond_0
    const/16 v0, 0x3a98

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public onFinish()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "rc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0xc8

    const-string v6, " "

    if-ne v2, v5, :cond_0

    :try_start_1
    const-string v5, "1000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DLS Sender] send result success : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DLS Sender] send result fail : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v2, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->callback(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "[DLS Client] Send fail."

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogE(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLS Client] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    const/16 v1, -0x29

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->callback(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->cleanUp(Ljava/io/BufferedReader;)V

    nop

    return v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->cleanUp(Ljava/io/BufferedReader;)V

    throw v2
.end method

.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->RTB_API:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->REALTIME_API:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "type"

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "tid"

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->trid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->trid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->SALT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v3, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    nop

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v5, "Content-Encoding"

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "gzip"

    goto :goto_1

    :cond_1
    const-string v6, "text"

    :goto_1
    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    iget v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->timeoutInMilliseconds:I

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DLS Client] Send to DLS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "[DLS Client] Send fail."

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogE(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLS Client] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
